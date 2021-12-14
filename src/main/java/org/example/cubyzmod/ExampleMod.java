package org.example.cubyzmod;

import cubyz.api.*;
import cubyz.world.blocks.Block;

@Mod(id = "example_mod", name = "Example Mod")
@LoadOrder(id = "addons-loader", order = Order.AFTER)
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

    @EventHandler(type = "register:block")
    public void registerBlocks(Registry<RegistryElement> registries) {
        // This will work if the cubyz developers merge this pr https://github.com/PixelGuys/Cubyz/pull/29
        //registries.register(new Block(MOD_ID.concat(":example"), .5f, .5f, Block.BlockClass.STONE));
    }
}
