#include <AlPlc_Opta.h>

/* opta_1.2.0
*/

struct PLCSharedVarsInput_t
{
};
PLCSharedVarsInput_t& PLCIn = (PLCSharedVarsInput_t&)m_PLCSharedVarsInputBuf;

struct PLCSharedVarsOutput_t
{
};
PLCSharedVarsOutput_t& PLCOut = (PLCSharedVarsOutput_t&)m_PLCSharedVarsOutputBuf;


AlPlc AxelPLC(595384145);

// shared variables can be accessed with PLCIn.varname and PLCOut.varname

void setup()
{
/*
	// Configure static IP address
	IPAddress ip(192, 168, 1, 1);
	IPAddress dns(8, 8, 8, 8);
	IPAddress gateway(192, 168, 1, 0);
	IPAddress subnet(255, 255, 255, 0);
	// If cable is not connected this will block the start of PLC with about 60s of timeout!
	Ethernet.begin(ip, dns, gateway, subnet);
*/

	AxelPLC.Run();
}

void loop()
{

}
