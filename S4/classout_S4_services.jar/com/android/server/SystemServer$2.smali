.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Landroid/media/AudioService;

.field final synthetic val$cocktailBarF:Lcom/android/server/cocktailbar/CocktailBarManagerService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$sLocationF:Landroid/os/IBinder;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$vrManagerF:Lcom/android/server/VRManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V
    .registers 28

    .prologue
    .line 2065
    iput-object p1, p0, this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, val$context:Landroid/content/Context;

    iput-object p3, p0, val$mountServiceF:Lcom/android/server/MountService;

    iput-object p4, p0, val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p5, p0, val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p6, p0, val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p7, p0, val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p8, p0, val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p9, p0, val$audioServiceF:Landroid/media/AudioService;

    iput-object p10, p0, val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p11, p0, val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p12, p0, val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p13, p0, val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p14, p0, val$sLocationF:Landroid/os/IBinder;

    move-object/from16 v0, p15

    iput-object v0, p0, val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p16

    iput-object v0, p0, val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p17

    iput-object v0, p0, val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p18

    iput-object v0, p0, val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, val$vrManagerF:Lcom/android/server/VRManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p21

    iput-object v0, p0, val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p22

    iput-object v0, p0, val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p23

    iput-object v0, p0, val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p24

    iput-object v0, p0, val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, p25

    iput-object v0, p0, val$cocktailBarF:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    move/from16 v0, p26

    iput-boolean v0, p0, val$safeMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2068
    const-string v3, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x226

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2073
    :try_start_12
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_12d

    .line 2078
    :goto_1b
    const-string v3, "SystemServer"

    const-string v4, "WebViewFactory preparation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    .line 2083
    const/4 v3, -0x2

    :try_start_26
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2085
    iget-object v3, p0, val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2e} :catch_137

    .line 2090
    :goto_2e
    :try_start_2e
    iget-object v3, p0, val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v3, :cond_37

    iget-object v3, p0, val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_37} :catch_142

    .line 2095
    :cond_37
    :goto_37
    :try_start_37
    iget-object v3, p0, val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v3, :cond_40

    iget-object v3, p0, val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_40} :catch_14c

    .line 2100
    :cond_40
    :goto_40
    :try_start_40
    iget-object v3, p0, val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v3, :cond_49

    iget-object v3, p0, val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_49} :catch_156

    .line 2105
    :cond_49
    :goto_49
    :try_start_49
    iget-object v3, p0, val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v3, :cond_52

    iget-object v3, p0, val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_52} :catch_160

    .line 2110
    :cond_52
    :goto_52
    :try_start_52
    iget-object v3, p0, val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v3, :cond_5b

    iget-object v3, p0, val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5b} :catch_16a

    .line 2115
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v3, p0, val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v3, :cond_64

    iget-object v3, p0, val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_64} :catch_174

    .line 2120
    :cond_64
    :goto_64
    :try_start_64
    iget-object v3, p0, val$audioServiceF:Landroid/media/AudioService;

    if-eqz v3, :cond_6d

    iget-object v3, p0, val$audioServiceF:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->systemReady()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6d} :catch_17e

    .line 2124
    :cond_6d
    :goto_6d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/Watchdog;->start()V

    .line 2128
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2132
    :try_start_7f
    iget-object v3, p0, val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v3, :cond_88

    iget-object v3, p0, val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_88} :catch_188

    .line 2137
    :cond_88
    :goto_88
    :try_start_88
    iget-object v3, p0, val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v3, :cond_93

    iget-object v3, p0, val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_93} :catch_192

    .line 2142
    :cond_93
    :goto_93
    :try_start_93
    iget-object v3, p0, val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v3, :cond_9c

    iget-object v3, p0, val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_9c} :catch_19c

    .line 2147
    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object v3, p0, val$sLocationF:Landroid/os/IBinder;

    if-eqz v3, :cond_cb

    .line 2148
    const-string v3, "com.samsung.location.SLocationLoader"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2149
    .local v1, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "systemReady"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2150
    .local v2, "sLocationSystemReady":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, val$context:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, val$sLocationF:Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_cb} :catch_1a6

    .line 2156
    .end local v1    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "sLocationSystemReady":Ljava/lang/reflect/Method;
    :cond_cb
    :goto_cb
    :try_start_cb
    iget-object v3, p0, val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v3, :cond_d4

    iget-object v3, p0, val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v3}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_d4} :catch_1c5

    .line 2161
    :cond_d4
    :goto_d4
    :try_start_d4
    iget-object v3, p0, val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v3, :cond_dd

    iget-object v3, p0, val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v3}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_dd} :catch_1cf

    .line 2166
    :cond_dd
    :goto_dd
    :try_start_dd
    iget-object v3, p0, val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v3, :cond_e6

    .line 2167
    iget-object v3, p0, val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v3}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e6} :catch_1d9

    .line 2173
    :cond_e6
    :goto_e6
    :try_start_e6
    iget-object v3, p0, val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v3, :cond_ef

    .line 2174
    iget-object v3, p0, val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_ef} :catch_1e3

    .line 2189
    :cond_ef
    :goto_ef
    :try_start_ef
    iget-object v3, p0, val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v3, :cond_f8

    iget-object v3, p0, val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v3}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_f8} :catch_1ed

    .line 2195
    :cond_f8
    :goto_f8
    :try_start_f8
    iget-object v3, p0, val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v3, :cond_101

    iget-object v3, p0, val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_101} :catch_1f7

    .line 2200
    :cond_101
    :goto_101
    :try_start_101
    iget-object v3, p0, val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v3, :cond_10a

    iget-object v3, p0, val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_10a} :catch_201

    .line 2205
    :cond_10a
    :goto_10a
    :try_start_10a
    iget-object v3, p0, val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v3, :cond_113

    iget-object v3, p0, val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_113} :catch_20b

    .line 2212
    :cond_113
    :goto_113
    :try_start_113
    iget-object v3, p0, val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_118} :catch_215

    .line 2227
    :goto_118
    :try_start_118
    iget-object v3, p0, val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    if-eqz v3, :cond_121

    iget-object v3, p0, val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverManagerService;->systemReady()V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_121} :catch_21f

    .line 2236
    :cond_121
    :goto_121
    :try_start_121
    iget-object v3, p0, val$cocktailBarF:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    if-eqz v3, :cond_12c

    iget-object v3, p0, val$cocktailBarF:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-boolean v4, p0, val$safeMode:Z

    invoke-virtual {v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->systemRunning(Z)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_12c} :catch_229

    .line 2241
    :cond_12c
    :goto_12c
    return-void

    .line 2074
    :catch_12d
    move-exception v0

    .line 2075
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "observing native crashes"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 2086
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_137
    move-exception v0

    .line 2087
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "starting System UI"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 2091
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_142
    move-exception v0

    .line 2092
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Mount Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 2096
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_14c
    move-exception v0

    .line 2097
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Score Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 2101
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_156
    move-exception v0

    .line 2102
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Managment Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 2106
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_160
    move-exception v0

    .line 2107
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Stats Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 2111
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_16a
    move-exception v0

    .line 2112
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Network Policy Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 2116
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_174
    move-exception v0

    .line 2117
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "making Connectivity Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 2121
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_17e
    move-exception v0

    .line 2122
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AudioService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 2133
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_188
    move-exception v0

    .line 2134
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying WallpaperService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_88

    .line 2138
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_192
    move-exception v0

    .line 2139
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_93

    .line 2143
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_19c
    move-exception v0

    .line 2144
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying Location Service running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9c

    .line 2152
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1a6
    move-exception v0

    .line 2153
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "making SLocation Service ready :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 2157
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1c5
    move-exception v0

    .line 2158
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CountryDetectorService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d4

    .line 2162
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1cf
    move-exception v0

    .line 2163
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying NetworkTimeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_dd

    .line 2169
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1d9
    move-exception v0

    .line 2170
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CommonTimeManagementService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e6

    .line 2175
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1e3
    move-exception v0

    .line 2176
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TextServicesManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ef

    .line 2190
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1ed
    move-exception v0

    .line 2191
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AssetAtlasService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f8

    .line 2196
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1f7
    move-exception v0

    .line 2197
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_101

    .line 2201
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_201
    move-exception v0

    .line 2202
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TelephonyRegistry running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10a

    .line 2206
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_20b
    move-exception v0

    .line 2207
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying MediaRouterService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_113

    .line 2213
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_215
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying EmergencyModeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_118

    .line 2228
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_21f
    move-exception v0

    .line 2229
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CoverManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_121

    .line 2237
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_229
    move-exception v0

    .line 2238
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CocktailBarManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12c
.end method
