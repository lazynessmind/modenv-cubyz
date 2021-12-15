package org.example.cubyzmod;

import cubyz.api.EventHandler;
import cubyz.api.Mod;
import cubyz.api.Proxy;
import lazy.cubyz.modutils.datagen.DataGeneration;
import org.example.cubyzmod.datagen.BlockGen;

@Mod(id = "example_mod", name = "Example Mod")
public class ExampleMod {

    public static final String MOD_ID = "example_mod";

    @Proxy(clientProxy = "org.example.cubyzmod.ClientProxy", serverProxy = "org.example.cubyzmod.CommonProxy")
    static IProxy proxy;

    @EventHandler(type = "init")
    public void init() {
        proxy.init();
    }

    @EventHandler(type = "preInit")
    public void preInit() {
        proxy.preInit();
    }

    @EventHandler(type = "postInit")
    public void postInit() {
        proxy.postInit();
    }
}
