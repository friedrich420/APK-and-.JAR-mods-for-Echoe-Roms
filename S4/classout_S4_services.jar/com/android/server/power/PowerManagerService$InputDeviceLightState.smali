.class final Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceLightState"
.end annotation


# static fields
.field public static final LIGHT_STATE_OFF:I = 0x0

.field public static final LIGHT_STATE_ON:I = 0x1

.field public static final LIGHT_STATE_UNKNOWN:I = 0x2

.field public static final MSG_LIGHT_OFF:I = 0x0

.field public static final MSG_LIGHT_ON:I = 0x1


# instance fields
.field private mHandlerInputDeviceLight:Landroid/os/Handler;

.field private mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

.field private final mInputDeviceLight:Lcom/android/server/lights/Light;

.field private mInputDeviceLightState:I

.field private mInputDeviceLightTimeout:I

.field private mIsKeepLight:Z

.field private mIsMsgPending:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;I)V
    .registers 5
    .param p2, "lightsId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5077
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5078
    # getter for: Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$8700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, mInputDeviceLight:Lcom/android/server/lights/Light;

    .line 5079
    iput v1, p0, mInputDeviceLightState:I

    .line 5080
    const/16 v0, 0x5dc

    iput v0, p0, mInputDeviceLightTimeout:I

    .line 5082
    iput-boolean v1, p0, mIsMsgPending:Z

    .line 5083
    iput-boolean v1, p0, mIsKeepLight:Z

    .line 5085
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputDeviceLight"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    .line 5086
    iget-object v0, p0, mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5087
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;

    iget-object v1, p0, mHandlerThreadInputDeviceLight:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState$1;-><init>(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Landroid/os/Looper;Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    .line 5100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setInputDeviceLightOn(I)V

    .line 5101
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5056
    invoke-direct {p0}, getInputDeviceLightTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # I

    .prologue
    .line 5056
    invoke-direct {p0, p1}, setInputDeviceLightTimeout(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .param p1, "x1"    # Z

    .prologue
    .line 5056
    invoke-direct {p0, p1}, setInputDeviceLightKeep(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5056
    invoke-direct {p0}, getInputDeviceLightKeep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5056
    invoke-direct {p0}, handleInputDeviceLightOn()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .prologue
    .line 5056
    invoke-direct {p0}, handleInputDeviceLightOff()V

    return-void
.end method

.method private getInputDeviceLightKeep()Z
    .registers 2

    .prologue
    .line 5171
    iget-boolean v0, p0, mIsKeepLight:Z

    return v0
.end method

.method private getInputDeviceLightState()I
    .registers 2

    .prologue
    .line 5141
    iget v0, p0, mInputDeviceLightState:I

    return v0
.end method

.method private getInputDeviceLightTimeout()I
    .registers 2

    .prologue
    .line 5163
    iget v0, p0, mInputDeviceLightTimeout:I

    return v0
.end method

.method private handleInputDeviceLightOff()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5150
    const-string v0, "PowerManagerService"

    const-string v1, "[input device light] handleInputDeviceLightOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    iget-object v0, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5152
    iput-boolean v2, p0, mIsMsgPending:Z

    .line 5153
    iget-object v0, p0, mInputDeviceLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 5154
    return-void
.end method

.method private handleInputDeviceLightOn()V
    .registers 3

    .prologue
    .line 5145
    const-string v0, "PowerManagerService"

    const-string v1, "[input device light] handleInputDeviceLightOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    iget-object v0, p0, mInputDeviceLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 5147
    return-void
.end method

.method private setInputDeviceLightKeep(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 5167
    iput-boolean p1, p0, mIsKeepLight:Z

    .line 5168
    return-void
.end method

.method private setInputDeviceLightTimeout(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 5157
    iget v0, p0, mInputDeviceLightTimeout:I

    if-eq v0, p1, :cond_6

    .line 5158
    iput p1, p0, mInputDeviceLightTimeout:I

    .line 5160
    :cond_6
    return-void
.end method


# virtual methods
.method public setInputDeviceLightOn(I)V
    .registers 8
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5105
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[input device light] setInputDeviceLightOn is called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    iget-boolean v1, p0, mIsMsgPending:Z

    if-eqz v1, :cond_25

    .line 5108
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5109
    iput-boolean v5, p0, mIsMsgPending:Z

    .line 5112
    :cond_25
    if-ne p1, v4, :cond_81

    .line 5113
    iget v1, p0, mInputDeviceLightTimeout:I

    if-eqz v1, :cond_53

    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$8000(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mInteractive:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$9000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mInteractiveChanging:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$9100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$9200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 5138
    :cond_53
    :goto_53
    return-void

    .line 5120
    :cond_54
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5121
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5122
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5124
    iget v1, p0, mInputDeviceLightTimeout:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7e

    iget-boolean v1, p0, mIsKeepLight:Z

    if-nez v1, :cond_7e

    .line 5126
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5127
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5128
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    iget v2, p0, mInputDeviceLightTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5129
    iput-boolean v4, p0, mIsMsgPending:Z

    .line 5137
    :cond_7e
    :goto_7e
    iput p1, p0, mInputDeviceLightState:I

    goto :goto_53

    .line 5132
    .end local v0    # "msg":Landroid/os/Message;
    :cond_81
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5133
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5134
    iget-object v1, p0, mHandlerInputDeviceLight:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7e
.end method
