%hook SBScreenShotter
- (void)saveScreenshot:(_Bool)arg1
{
	%orig(0);
}
%end