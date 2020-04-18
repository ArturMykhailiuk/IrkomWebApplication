EXEC sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
EXEC sp_configure 'xp_cmdshell', 1;  
GO  
RECONFIGURE;  
GO

   declare @sql varchar(4000)
   select @sql = 'bcp " SELECT TOP 3 SklPrc_Rcd AS SklID, SKLPRC_RcdOpa AS OpaID FROM sklprc FOR JSON PATH, INCLUDE_NULL_VALUES;" queryout D:\JsonTest.json -c -t, -T -diz200519 -S' + @@servername
   exec xp_cmdshell @sql