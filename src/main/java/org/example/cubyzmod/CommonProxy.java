package org.example.cubyzmod;

import cubyz.utils.Logger;

public class CommonProxy implements IProxy {
    @Override
    public void preInit() {
        Logger.debug("PreInit from mod");
    }

    @Override
    public void init() {
        Logger.debug("Init from mod");
    }

    @Override
    public void postInit() {
        Logger.debug("PostInit from mod");
    }
}
