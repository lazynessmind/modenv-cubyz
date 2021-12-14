package org.example.cubyzmod;

import cubyz.utils.ResourceManager;
import cubyz.utils.ResourcePack;

import java.io.File;

public class ClientProxy extends CommonProxy {

    @Override
    public void preInit() {
        super.preInit();
    }

    @Override
    public void init() {
        super.init();
        ResourcePack pack = new ResourcePack();
        pack.name = ExampleMod.MOD_ID;
        pack.path = new File("assets/example_mod/");
        ResourceManager.packs.add(pack);
    }

    @Override
    public void postInit() {
        super.postInit();
    }
}
