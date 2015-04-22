.class Lcom/android/server/wallpaper/WallpaperManagerService$2;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$mPersona:Landroid/os/PersonaManager;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/PersonaManager;)V
    .registers 3

    .prologue
    .line 607
    iput-object p1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, val$mPersona:Landroid/os/PersonaManager;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .registers 6
    .param p1, "personaId"    # I

    .prologue
    .line 619
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKnoxContainerLaunch personaId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, val$mPersona:Landroid/os/PersonaManager;

    if-eqz v1, :cond_35

    iget-object v1, p0, val$mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 622
    iget-object v1, p0, val$mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 623
    .local v0, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v0, :cond_35

    iget-boolean v1, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v1, :cond_35

    .line 624
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaper(I)V
    invoke-static {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 627
    .end local v0    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_35
    return-void
.end method

.method public onPersonaActive(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 610
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPersonaActive personaId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/16 v0, 0x64

    if-lt p1, v0, :cond_21

    .line 612
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaper(I)V
    invoke-static {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 614
    :cond_21
    return-void
.end method

.method public onRemovePersona(I)V
    .registers 2
    .param p1, "personaId"    # I

    .prologue
    .line 632
    return-void
.end method

.method public onResetPersona(I)V
    .registers 2
    .param p1, "personaId"    # I

    .prologue
    .line 637
    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "oldState"    # Landroid/content/pm/PersonaState;
    .param p3, "newState"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 642
    return-void
.end method
