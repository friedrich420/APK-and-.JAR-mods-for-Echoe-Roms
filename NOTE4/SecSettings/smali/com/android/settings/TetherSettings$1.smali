.class Lcom/android/settings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    const/4 v4, 0x0

    .line 443
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 444
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 447
    .local v0, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_1

    .line 448
    # getter for: Lcom/android/settings/TetherSettings;->DBG:Z
    invoke-static {}, Lcom/android/settings/TetherSettings;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const-string v1, "TetherSettings"

    const-string v2, "Service is connected,setBluetoothTethering to true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v1, v4}, Lcom/android/settings/TetherSettings;->access$102(Lcom/android/settings/TetherSettings;Z)Z

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)V

    .line 456
    .end local v0    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mFromSearch:Z
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/settings/SettingsPreferenceFragment;->mSettingValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 457
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mTargetPreferece:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v2, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/TetherSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 459
    iget-object v1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mFromSearch:Z
    invoke-static {v1, v4}, Lcom/android/settings/TetherSettings;->access$402(Lcom/android/settings/TetherSettings;Z)Z

    .line 463
    :cond_3
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 465
    iget-object v2, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 466
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 467
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 469
    iget-object v2, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 471
    if-eqz v0, :cond_1

    .line 473
    # getter for: Lcom/android/settings/TetherSettings;->DBG:Z
    invoke-static {}, Lcom/android/settings/TetherSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    const-string v2, "TetherSettings"

    const-string v3, "Service is disconnected, call closeProfileProxy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 478
    :cond_1
    const/4 v1, 0x0

    .line 480
    :cond_2
    return-void
.end method
