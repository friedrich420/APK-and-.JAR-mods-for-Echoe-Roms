.class final Lcom/android/server/telecom/secutils/AutoAnswer$1;
.super Ljava/lang/Object;
.source "AutoAnswer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/AutoAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .prologue
    .line 133
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {p2}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 134
    const-string v0, "AutoAnswer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- Got BluetoothHeadset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "answeringmode_auto_time"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 142
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    # invokes: Lcom/android/server/telecom/secutils/AutoAnswer;->startAutoAnswer(J)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$100(J)V

    .line 146
    :cond_0
    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$200()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    # getter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$000()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 148
    const/4 v0, 0x0

    # setter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 150
    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    # setter for: Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 154
    return-void
.end method
