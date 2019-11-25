package Xenocryst.Colonize;

import Xenocryst.Colonize.Proxy.CommonProxy;
import net.minecraftforge.fluids.FluidRegistry;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.SidedProxy;
import net.minecraftforge.fml.common.event.FMLInitializationEvent;
import net.minecraftforge.fml.common.event.FMLPostInitializationEvent;
import net.minecraftforge.fml.common.event.FMLPreInitializationEvent;
import org.apache.logging.log4j.Logger;

@Mod(modid = Colonize.MODID, name = "Colonize", version = Colonize.MODVERSION, useMetadata = true)
public class Colonize {
    public static final String MODID = "colonize";
    public static final String MODNAME = "Colonize";
    public static final String MODVERSION = "0.0.1";

    @SidedProxy(clientSide = "Xenocryst.Colonize.Proxy.ClientProxy", serverSide = "Xenocryst.Colonize.Proxy.ServerProxy")
    public static CommonProxy proxy;
    public static Logger logger;

    @Mod.Instance
    public static Colonize modinstance;

    @Mod.EventHandler
    public void preInit(FMLPreInitializationEvent event) {
        logger = event.getModLog();
        proxy.preInit(event);
    }

    @Mod.EventHandler
    public void init(FMLInitializationEvent event) {
        proxy.init(event);
    }

    @Mod.EventHandler
    public void postInit(FMLPostInitializationEvent event) {
        proxy.postInit(event);
    }
}
