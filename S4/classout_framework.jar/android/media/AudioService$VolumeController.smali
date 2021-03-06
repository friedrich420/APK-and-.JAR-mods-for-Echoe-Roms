.class public Landroid/media/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .registers 2
    .param p0, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6892
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 6888
    iget-object v0, p0, mController:Landroid/media/IVolumeController;

    invoke-static {v0}, binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSafeVolumeDialogShowing()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 6961
    iget-object v2, p0, mController:Landroid/media/IVolumeController;

    if-nez v2, :cond_6

    .line 6968
    :goto_5
    return v1

    .line 6964
    :cond_6
    :try_start_6
    iget-object v2, p0, mController:Landroid/media/IVolumeController;

    invoke-interface {v2}, Landroid/media/IVolumeController;->isSafeVolumeDialogShowing()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 6965
    :catch_d
    move-exception v0

    .line 6966
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VolumeController"

    const-string v3, "Error isSafeVolumeDialogShowing"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 4
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6884
    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 6852
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, mLongPressTimeout:I

    .line 6854
    return-void
.end method

.method public postDismiss()V
    .registers 4

    .prologue
    .line 6951
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_5

    .line 6958
    :goto_4
    return-void

    .line 6954
    :cond_5
    :try_start_5
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    invoke-interface {v1}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 6955
    :catch_b
    move-exception v0

    .line 6956
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 5
    .param p1, "flags"    # I

    .prologue
    .line 6901
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_5

    .line 6908
    :goto_4
    return-void

    .line 6904
    :cond_5
    :try_start_5
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 6905
    :catch_b
    move-exception v0

    .line 6906
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling displaySafeVolumeWarning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public postMasterMuteChanged(I)V
    .registers 5
    .param p1, "flags"    # I

    .prologue
    .line 6931
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_5

    .line 6938
    :goto_4
    return-void

    .line 6934
    :cond_5
    :try_start_5
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 6935
    :catch_b
    move-exception v0

    .line 6936
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterMuteChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public postMasterVolumeChanged(I)V
    .registers 5
    .param p1, "flags"    # I

    .prologue
    .line 6921
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_5

    .line 6928
    :goto_4
    return-void

    .line 6924
    :cond_5
    :try_start_5
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->masterVolumeChanged(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 6925
    :catch_b
    move-exception v0

    .line 6926
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterVolumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public postVolumeChanged(II)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 6911
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_5

    .line 6918
    :goto_4
    return-void

    .line 6914
    :cond_5
    :try_start_5
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 6915
    :catch_b
    move-exception v0

    .line 6916
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling volumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6847
    iput-object p1, p0, mController:Landroid/media/IVolumeController;

    .line 6848
    const/4 v0, 0x0

    iput-boolean v0, p0, mVisible:Z

    .line 6849
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 5
    .param p1, "layoutDirection"    # I

    .prologue
    .line 6941
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_5

    .line 6948
    :goto_4
    return-void

    .line 6944
    :cond_5
    :try_start_5
    iget-object v1, p0, mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 6945
    :catch_b
    move-exception v0

    .line 6946
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setLayoutDirection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 6880
    iput-boolean p1, p0, mVisible:Z

    .line 6881
    return-void
.end method

.method public suppressAdjustment(II)Z
    .registers 11
    .param p1, "resolvedStream"    # I
    .param p2, "flags"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 6857
    const/4 v2, 0x0

    .line 6858
    .local v2, "suppress":Z
    const/4 v3, 0x2

    if-ne p1, v3, :cond_23

    iget-object v3, p0, mController:Landroid/media/IVolumeController;

    if-eqz v3, :cond_23

    .line 6859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6860
    .local v0, "now":J
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_24

    iget-boolean v3, p0, mVisible:Z

    if-nez v3, :cond_24

    .line 6862
    iget-wide v4, p0, mNextLongPress:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_22

    .line 6863
    iget v3, p0, mLongPressTimeout:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    iput-wide v4, p0, mNextLongPress:J

    .line 6865
    :cond_22
    const/4 v2, 0x1

    .line 6876
    .end local v0    # "now":J
    :cond_23
    :goto_23
    return v2

    .line 6866
    .restart local v0    # "now":J
    :cond_24
    iget-wide v4, p0, mNextLongPress:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_23

    .line 6867
    iget-wide v4, p0, mNextLongPress:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_33

    .line 6869
    iput-wide v6, p0, mNextLongPress:J

    goto :goto_23

    .line 6872
    :cond_33
    const/4 v2, 0x1

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 6897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
