#include <binder/IServiceManager.h>
#include <binder/IPCThreadState.h>
#include "helloworldservice.h"

namespace android
{
	static pthread_key_t sigbuskey;

	int helloworldservice::Instance()
	{
		int ret = defaultServiceManager()->addService(String16("Bjtu1024Group"), new helloworldservice());
		return ret;
	}
	helloworldservice::helloworldservice()
	{
		pthread_key_create(&sigbuskey, NULL);
	}
	helloworldservice::~helloworldservice()
	{
		pthread_key_delete(sigbuskey);
	}

	status_t helloworldservice::onTransact(uint32_t code, const Parcel& data, Parcel* reply, uint32_t flags)
	{
		reply->writeCString("Hello World! by 1024 group");
		return NO_ERROR;
	}
}
