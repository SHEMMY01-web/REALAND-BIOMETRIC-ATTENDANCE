using System;
using System.IO.Ports;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;
using Riss.Devices;
using ZDC2911Demo.IConvert;

namespace ZDC2911Demo.UI {
    public partial class RealTimeLogForm : Form {
        private int no = 1;
        private Zd2911Monitor listener;
        private delegate void AddRecord(ListViewItem lvi);

        public RealTimeLogForm() {
            InitializeComponent();
        }

        private string GetLocalIPAddress() {
            IPAddress[] ipAddressList = Dns.GetHostAddresses(Dns.GetHostName());
            foreach (IPAddress ip in ipAddressList) {
                if (ip.AddressFamily.Equals(AddressFamily.InterNetwork)) {
                    return ip.ToString();
                }
            }

            return string.Empty;
        }

        private void AddRecordToListView(ListViewItem lvi) {
            lvw_Logs.Items.Add(lvi);
        }
        
        private void btn_Listen_Click(object sender, EventArgs e) {
            if (cbo_SerialPort.Enabled && -1 == cbo_SerialPort.SelectedIndex) {
                MessageBox.Show("Please Selected Serail Port", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbo_SerialPort.Focus();
                return;
            }

            if (cbo_Baudrate.Enabled && -1 == cbo_Baudrate.SelectedIndex) {
                MessageBox.Show("Please Selected Baudrate", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbo_Baudrate.Focus();
                return;
            }

            try {
                if (btn_Listen.Text.Trim().Equals("Listen")) {
                    Monitor m = new Monitor();
                    if (0 == cbo_Mode.SelectedIndex) {
                        m.UDPAddress = GetLocalIPAddress();
                        m.UDPPort = (int)nud_Port.Value;
                        m.Mode = 0;
                    } else {
                        m.SerialPort = Convert.ToInt32(cbo_SerialPort.SelectedItem.ToString().Replace("COM", string.Empty));
                        m.SerialBaudRate = Convert.ToInt32(cbo_Baudrate.SelectedItem);
                        m.Mode = 1;
                    }
                    
                    listener = Zd2911Monitor.CreateZd2911Monitor(m);
                    listener.ReceiveHandler += new ReceiveHandler(listener_ReceiveHandler);
                    listener.OpenListen();
                    btn_Listen.Text = "Cancel";
                } else {
                    listener.CloseListen();
                    listener = null;
                    btn_Listen.Text = "Listen";
                }
            } catch (Exception ex) {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void listener_ReceiveHandler(object sender, ReceiveEventArg e) {
            Record record = e.record;
            string verify = ConvertObject.IOMode(record.Verify);
            string action = ConvertObject.GLogType(record.Action);
            ListViewItem lvi = new ListViewItem(new string[]{no.ToString(), record.DN.ToString(), record.DIN.ToString(),
                string.Empty, verify, action, record.Clock.ToString("yyyy-MM-dd HH:mm:ss")});
            BeginInvoke(new AddRecord(AddRecordToListView), new object[] { lvi });
            no++;
        }

        private void cbo_Mode_SelectedIndexChanged(object sender, EventArgs e) {
            switch (cbo_Mode.SelectedIndex) {
                case 0:
                    nud_Port.Enabled = true;
                    cbo_SerialPort.Enabled = false;
                    cbo_Baudrate.Enabled = false;
                    break;

                case 1:
                    nud_Port.Enabled = false;
                    cbo_SerialPort.Enabled = true;
                    cbo_Baudrate.Enabled = true;
                    cbo_Baudrate.SelectedIndex = 0;
                    string[] serialNames = SerialPort.GetPortNames();
                    if (null != serialNames) {
                        cbo_SerialPort.Items.Clear();
                        foreach (string name in serialNames) {
                            cbo_SerialPort.Items.Add(name);
                        }
                        cbo_SerialPort.SelectedIndex = 0;                        
                    }
                    break;
            }
        }

        private void RealTimeLogForm_Load(object sender, EventArgs e) {
            cbo_Mode.SelectedIndex = 0;
        }
    }
}
