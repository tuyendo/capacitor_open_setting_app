declare module "@capacitor/core" {
    interface PluginRegistry {
        SettingApp: SettingAppPlugin;
    }
}
export interface SettingAppPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    openSettingLocation: Promise<any>;
    openSetting: Promise<any>;
}
