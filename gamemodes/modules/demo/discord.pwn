//#include <YSI_Coding\y_hooks>
#include <discord-connector.inc>

//new DCC_Channel:g_WelcomeChannelId;
new DCC_Channel:a_ChannelId;

/*hook OnPlayerSpawn(playerid)
{
	new name[MAX_PLAYER_NAME + 1];
	GetPlayerName(playerid, name, sizeof name);
	
	if (_:g_WelcomeChannelId == 0)
		g_WelcomeChannelId = DCC_FindChannelById("435679340588564480"); // Discord channel ID
	
	new str[128];
	format(str, sizeof str, "Player %s joined the server.", name);
	DCC_SendChannelMessage(g_WelcomeChannelId, str);
	return 1;
}*/

/*public DCC_OnChannelMessage(DCC_Channel:channel, DCC_User:author, const message[])
{
	new channel_name[100 + 1];
	if(!DCC_GetChannelName(channel, channel_name))
		return 0; // invalid channel

	new user_name[32 + 1];
	if (!DCC_GetUserName(author, user_name))
		return 0; // invalid user

	new str[145];
	format(str, sizeof str, "[Discord/%s] %s: %s", channel_name, user_name, message);
	SendClientMessageToAll(-1, str);
	return 1;
}*/

SendAdminLog(playerid, const type[], const text[])
{
    if (_:a_ChannelId == 0)
		a_ChannelId = DCC_FindChannelById("1059548768074219541");
	
	new str[128];
	format(str, sizeof str, "[%s] %s: %s", ReturnAdminName(playerid), type, text);
	DCC_SendChannelMessage(a_ChannelId, str);
    return 1;
}