package cn.edu.bjtu.group1024.common.aidl;
import cn.edu.bjtu.group1024.common.aidl.Response;
import cn.edu.bjtu.group1024.common.aidl.Request;
interface IFibonacci{
	Response javaRecursion(in Request request);                   // java��ĵݹ�
	Response javaInterative(in Request request);                   // java��ĵ���
	Response nativeRecursion(in Request request);              // native��ĵݹ�
	Response nativeInterative(in Request request);               // native��ĵ���
}