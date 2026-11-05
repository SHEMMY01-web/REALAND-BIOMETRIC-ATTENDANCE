// COMTest.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <vector>
using namespace std;
#import "..\Debug\Riss.Devices.tlb" named_guids raw_interfaces_only
//#import "D:\\Riss.Devices.tlb" named_guids raw_interfaces_only
using namespace Riss_Devices;

//Simple example: C++ Call C# DLL
int _tmain(int argc, _TCHAR* argv[])
{
	HRESULT hr;
	CoInitialize(NULL);//Init COM

	IZd2911ToolsPtr toolPtr;
	hr = toolPtr.CreateInstance(__uuidof(Zd2911Tools));
	if(FAILED(hr)) {
		cout<<"Create Zd2911Tools Instance Fail"<<endl;
	}

	IDevicePtr devicePtr;
	hr = devicePtr.CreateInstance(__uuidof (Device));
	if(FAILED(hr)) {
		cout<<"Create Device Instance Fail"<<endl;
		CoUninitialize(); 
		getchar();
		return 0;
	}

	devicePtr->put_DN(1);
	devicePtr->put_Password(_bstr_t("0"));
	devicePtr->put_ConnectionModel(5);
	devicePtr->put_Model(_bstr_t("2911"));
	devicePtr->put_CommunicationType(CommunicationType::CommunicationType_Tcp);
	devicePtr->put_IpAddress(_bstr_t("192.168.2.16"));
	devicePtr->put_IpPort(5500);

	IZd2911DeviceConnectionPtr deviceConnPtr;
	hr = deviceConnPtr.CreateInstance(__uuidof(Zd2911DeviceConnection));
	if(FAILED(hr)) {
		cout<<"Create Device Connection Instance Fail"<<endl;
		CoUninitialize(); 
		getchar();
		return 0;
	}

	long openStatus;
	hr = deviceConnPtr->Open(devicePtr, &openStatus);//Open Device Connection
	if(FAILED(hr) || 0 == openStatus) {
		cout<<"Open Device Connection Fail"<<endl;
		CoUninitialize(); 
		getchar();
		return 0;
	}
	cout<<"Open Device Connection Success"<<endl;

	long i;
	VARIANT_BOOL result;
	SAFEARRAY* extraProperty = NULL;
	SAFEARRAY* extraData = NULL;
	SAFEARRAY* deviceStatus = NULL;

	//Setting device communication status to busy
	hr = toolPtr->GetBytesByNum(_bstr_t("1"), NumberType::NumberType_Int32Bit, &deviceStatus);//DeviceBusy: 1
	if(FAILED(hr)){
		cout<<"Occur Error"<<endl;
	}
	
	hr = deviceConnPtr->SetPropertyExt_2(DeviceProperty::DeviceProperty_Enable, &extraProperty, devicePtr, &deviceStatus, &result);
	if(FAILED(hr) || VARIANT_FALSE == result) {
		cout<<"Setting device communication status to busy: Fail"<<endl;
	}

	//Set Device Time
	hr = deviceConnPtr->SetPropertyExt_2(DeviceProperty::DeviceProperty_DeviceTime, &extraProperty, devicePtr, &extraData, &result);
	if(FAILED(hr) || VARIANT_FALSE == result) {
		cout<<"Set Device Time Fail"<<endl;
	}
	cout<<"Set Device Time Success"<<endl;

	//Get new attendance logs
	BYTE newFlag[] ={1, 1};//New attendance logs(the new attendance logs that never be downloaded before), when this parameter is 1, whether the 2nd parameter “removing the new log mark” is 1 or 0, it will force to remove the new log mark.
	BYTE newDateTime[6];
	newDateTime[0] = 2010 - 2000;//2010: Begin Datetime: Year
	newDateTime[1] = 1;//1: Begin Datetime: Month
	newDateTime[2] = 1;//1: Begin Datetime: Day
	newDateTime[3] = 2099 - 2000;//2099: End Datetime: Year
	newDateTime[4] = 12;//12: End Datetime: Month
	newDateTime[5] = 31;//31: End Datetime: Day

	extraProperty = SafeArrayCreateVector(VT_UI1, 0, sizeof(newFlag));
	for(i = 0; i < sizeof(newFlag); i++) {
		SafeArrayPutElement(extraProperty, &i, &newFlag[i]);
	}
	SafeArrayUnaccessData(extraProperty);

	extraData = SafeArrayCreateVector(VT_UI1, 0, sizeof(newDateTime));
	for(i = 0; i < sizeof(newDateTime); i++) {
		SafeArrayPutElement(extraData, &i, &newDateTime[i]);
	}
	SafeArrayUnaccessData(extraData);
	hr = deviceConnPtr->GetPropertyExt_2(DeviceProperty::DeviceProperty_AttRecords, &extraProperty, &devicePtr, &extraData, &result);
	if(FAILED(hr) || VARIANT_FALSE == result) {
		cout<<"Get new attendance logs: Fail"<<endl;
	}
	SAFEARRAY* newAtt;
	hr = toolPtr->GetGLogList(&extraData, &newAtt);//Converter byte array to RecrodExt array
	if(FAILED(hr)) {
		cout<<"Occur Error"<<endl;
	}
	cout<<"Get new attendance logs: "<<newAtt->rgsabound[0].cElements<<endl;
	IRecordExtPtr* newRecords = new IRecordExtPtr[newAtt->rgsabound[0].cElements];
	SafeArrayAccessData(newAtt, (void **)&newRecords);
	SafeArrayUnaccessData(newAtt);

	//Get all attendance logs
	BYTE allFlag[] = {0, 1};//All attendance logs, the 1st parameter is 0: get all attendance logs, the 2nd parameter is“removing the new log mark”
	BYTE allDateTime[6];
	allDateTime[0] = 2010 - 2000;//2010: Begin Datetime: Year
	allDateTime[1] = 1;//1: Begin Datetime: Month
	allDateTime[2] = 1;//1: Begin Datetime: Day
	allDateTime[3] = 2099 - 2000;//2099: End Datetime: Year
	allDateTime[4] = 12;//12: End Datetime: Month
	allDateTime[5] = 31;//31: End Datetime: Day

	extraProperty = SafeArrayCreateVector(VT_UI1, 0, sizeof(allFlag));
	for(i = 0; i < sizeof(allFlag); i++) {
		SafeArrayPutElement(extraProperty, &i, &allFlag[i]);
	}
	SafeArrayUnaccessData(extraProperty);

	extraData = SafeArrayCreateVector(VT_UI1, 0, sizeof(allDateTime));
	for(i = 0; i < sizeof(allDateTime); i++) {
		SafeArrayPutElement(extraData, &i, &allDateTime[i]);
	}
	SafeArrayUnaccessData(extraData);
	hr = deviceConnPtr->GetPropertyExt_2(DeviceProperty::DeviceProperty_AttRecords, &extraProperty, &devicePtr, &extraData, &result);
	if(FAILED(hr) || VARIANT_FALSE == result) {
		cout<<"Get all attendance logs: Fail"<<endl;
	}
	SAFEARRAY* allAtt;
	hr = toolPtr->GetGLogList(&extraData, &allAtt);//Converter byte array to RecordExt array
	if(FAILED(hr)) {
		cout<<"Occur Error"<<endl;
	}

	cout<<"Get all attendance logs: "<<allAtt->rgsabound[0].cElements<<endl;
	IRecordExtPtr* records = new IRecordExtPtr[allAtt->rgsabound[0].cElements];
	SafeArrayAccessData(allAtt, (void **)&records);
	SafeArrayUnaccessData(allAtt);

	//Get the user information collection
	SAFEARRAY* userIDBytes;
	hr = toolPtr->GetBytes(_bstr_t("0"), &userIDBytes);//0: All the users, Other figures on behalf of the user ID
	if(FAILED(hr)) {
		cout<<"Occur Error"<<endl;
	}
	SafeArrayUnaccessData(userIDBytes);

	hr = deviceConnPtr->GetPropertyExt_2(DeviceProperty::DeviceProperty_Enrolls, &userIDBytes, &devicePtr, &extraData, &result);
	if(FAILED(hr) || VARIANT_FALSE == result) {
		cout<<"Get the user information collection: Fail"<<endl;
	}

	SAFEARRAY* userList;
	hr = toolPtr->GetAllUserExtWithoutEnroll(&extraData, &userList);
	if(FAILED(hr)) {
		cout<<"Occur Error"<<endl;
	}
	SafeArrayUnaccessData(extraData);

	int c = 0;
	int usersCount = userList->rgsabound[0].cElements;
	IUserExtPtr* users = new IUserExtPtr[usersCount];
	SafeArrayAccessData(userList, (void **)&users);
	SafeArrayUnaccessData(userList);	
	vector<IUserExtPtr> gUsers;
	for(i = 0; i < usersCount; i++) {	
		IUserExt *u = users[i];
		hr = deviceConnPtr->GetPropertyExt(UserProperty::UserProperty_Enroll, &extraProperty, &u, &extraData, &result);
		if(SUCCEEDED(hr) && VARIANT_TRUE == result) {
			gUsers.push_back(u);			
			c++;
		} else {
			BSTR din;
			_bstr_t tmpUserID = u->get_DIN(&din);
			char* userID = tmpUserID;
			cout<<"User ID "<<userID<<" : Get enroll data fail"<<endl;
		}
	}
	cout<<"Get user enroll data: "<<c<<endl;	

	//Clear all user
	SAFEARRAY* clearUserIDBytes;
	hr = toolPtr->GetBytes(_bstr_t("0"), &clearUserIDBytes);//0: All the users, Other users on behalf of the user ID
	if(FAILED(hr)) {
		cout<<"Occur Error"<<endl;
	}
	SafeArrayUnaccessData(clearUserIDBytes);
	hr = deviceConnPtr->SetPropertyExt_2(DeviceProperty::DeviceProperty_Enrolls, &extraProperty, devicePtr, &clearUserIDBytes, &result);
	if(SUCCEEDED(hr) && VARIANT_TRUE == result) {
		cout<<"Clear all users: Success"<<endl;
	} else {
		cout<<"Clear all users: Fail"<<endl;
	}

	//Set user enroll data to device
	c = 0;
	for(vector<IUserExtPtr>::size_type st = 0; st < gUsers.size(); st++) {
		BYTE isDelete[] ={0};//0: false
		extraData = SafeArrayCreateVector(VT_UI1, 0, sizeof(isDelete));
		for(i = 0; i < sizeof(isDelete); i++) {
			SafeArrayPutElement(extraData, &i, &isDelete[i]);
		}
		SafeArrayUnaccessData(extraData);

		IUserExt *u = gUsers[st];		
		
		//
		//BSTR din,cardNo;
		//u->get_DIN(&din);
		//SAFEARRAY *enrolls;
		//u->get_Enrolls(&enrolls);

		//int enrollCount = enrolls->rgsabound[0].cElements;
		//IEnrollExtPtr* enrollList = new IEnrollExtPtr[enrollCount];
		//SafeArrayAccessData(enrolls, (void **)&enrollList);
		//SafeArrayUnaccessData(enrolls);

		//SAFEARRAY *fp;
		//for(int j=0; j<enrollCount; j++)
		//{
		//	IEnrollExt *enroll = enrollList[j];

		//	enroll->get_CardID(&cardNo);//获取卡号
		//	enroll->get_DIN(&din);//获取用户号
		//	enroll->put_CardID(din);//将卡号设置为用户号，测试卡号能否设置	
		//}
		
		//

		hr = deviceConnPtr->SetPropertyExt(UserProperty::UserProperty_Enroll, &extraProperty, u, &extraData, &result);
		if(SUCCEEDED(hr) && VARIANT_TRUE == result) {
			c++;
		} else {
			BSTR din;
			hr = u->get_DIN(&din);
			_bstr_t tmpUserID = din;
			char* userID = tmpUserID;
			cout<<"User ID "<<userID<<" : Set enroll data fail"<<endl;
		}
	}
	cout<<"Set user enroll data: "<<c<<endl;

	//Setting device communication status to idle
	hr = toolPtr->GetBytesByNum(_bstr_t("0"), NumberType::NumberType_Int32Bit, &deviceStatus);//DeviceIdle: 0
	if(FAILED(hr)){
		cout<<"Occur Error"<<endl;
	}
	
	hr = deviceConnPtr->SetPropertyExt_2(DeviceProperty::DeviceProperty_Enable, &extraProperty, devicePtr, &deviceStatus, &result);
	if(FAILED(hr) || VARIANT_FALSE == result) {
		cout<<"Setting device communication status to idle: Fail"<<endl;
	}

	hr = deviceConnPtr->Close();
	if(FAILED(hr)) {
		cout<<"Close Device Connection Fail"<<endl;
	}

	CoUninitialize(); 
	getchar();
	return 0;
}

