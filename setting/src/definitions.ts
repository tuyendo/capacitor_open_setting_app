//@ts-ignore
declare module "@capacitor/core" {
  interface PluginRegistry {
    setting: settingPlugin;
  }
}

export interface settingPlugin {
  openSettingLocation: Promise<any>;
  openSetting: Promise<any>;
}
