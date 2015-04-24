.class public final Lcom/android/server/telecom/TelecomApp;
.super Landroid/app/Application;
.source "TelecomApp.java"


# static fields
.field private static sInstance:Lcom/android/server/telecom/TelecomApp;


# instance fields
.field private autoCSP:Lcom/android/server/telecom/IAutoCSP;

.field private autoCSPConnection:Landroid/content/ServiceConnection;

.field private isPenMultiwindow:Z

.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

.field private mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

.field private mRcsSessionObserver:Landroid/database/ContentObserver;

.field private mTelecomService:Lcom/android/server/telecom/TelecomServiceImpl;

.field private mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 101
    iput-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/TelecomApp;->isPenMultiwindow:Z

    .line 109
    iput-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 238
    new-instance v0, Lcom/android/server/telecom/TelecomApp$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/TelecomApp$2;-><init>(Lcom/android/server/telecom/TelecomApp;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->autoCSPConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/telecom/TelecomApp;Lcom/android/server/telecom/IAutoCSP;)Lcom/android/server/telecom/IAutoCSP;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/telecom/TelecomApp;->autoCSP:Lcom/android/server/telecom/IAutoCSP;

    return-object p1
.end method

.method public static getInstance()Lcom/android/server/telecom/TelecomApp;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/android/server/telecom/TelecomApp;->sInstance:Lcom/android/server/telecom/TelecomApp;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No TelecomApp running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    sget-object v0, Lcom/android/server/telecom/TelecomApp;->sInstance:Lcom/android/server/telecom/TelecomApp;

    return-object v0
.end method


# virtual methods
.method public final getAutoCSP()Lcom/android/server/telecom/IAutoCSP;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->autoCSP:Lcom/android/server/telecom/IAutoCSP;

    return-object v0
.end method

.method public final getMWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3

    .prologue
    .line 305
    const-string v0, "TelecommApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMWindowStyle : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/TelecomApp;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method public final getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-object v0
.end method

.method public final getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    return-object v0
.end method

.method public final isPenWindow()Z
    .locals 3

    .prologue
    .line 295
    const-string v0, "TelecommApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPenWindow : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/telecom/TelecomApp;->isPenMultiwindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-boolean v0, p0, Lcom/android/server/telecom/TelecomApp;->isPenMultiwindow:Z

    return v0
.end method

.method public final onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 116
    sput-object p0, Lcom/android/server/telecom/TelecomApp;->sInstance:Lcom/android/server/telecom/TelecomApp;

    .line 117
    invoke-static {p0}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeature(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Lcom/android/services/telephony/common/SystemDBInterface;->initialize(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    .line 126
    new-instance v0, Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/PhoneAccountRegistrar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    .line 128
    new-instance v0, Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/telecom/CallsManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 129
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-static {v0}, Lcom/android/server/telecom/CallsManager;->initialize(Lcom/android/server/telecom/CallsManager;)V

    .line 131
    new-instance v0, Lcom/android/server/telecom/TelecomServiceImpl;

    iget-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomApp;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomApp;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/telecom/TelecomServiceImpl;-><init>(Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;Lcom/android/server/telecom/CallsManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mTelecomService:Lcom/android/server/telecom/TelecomServiceImpl;

    .line 133
    const-string v0, "telecom"

    iget-object v1, p0, Lcom/android/server/telecom/TelecomApp;->mTelecomService:Lcom/android/server/telecom/TelecomServiceImpl;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 136
    invoke-static {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->start(Landroid/content/Context;)V

    .line 138
    invoke-static {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->start(Landroid/content/Context;)V

    .line 140
    invoke-static {p0}, Lcom/android/server/telecom/LowBatteryManager;->init(Landroid/content/Context;)V

    .line 142
    :cond_0
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsSessionObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Lcom/android/server/telecom/TelecomApp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/TelecomApp$1;-><init>(Lcom/android/server/telecom/TelecomApp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsSessionObserver:Landroid/database/ContentObserver;

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomApp;->mRcsSessionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    :cond_2
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->getInstance()Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->telephonyManager(Landroid/content/Context;)V

    .line 162
    :cond_3
    const-string v0, "ltn_auto_csp"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    const-string v0, "AutoCSP"

    const-string v1, "Binding to AutoCSP Service "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/server/telecom/IAutoCSP;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v4, :cond_7

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomApp;->autoCSPConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/telecom/TelecomApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 168
    :cond_5
    const-string v0, "use_action_memo_duringcall"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.snote"

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    invoke-static {p0}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->init(Lcom/android/server/telecom/TelecomApp;)Lcom/android/server/telecom/secutils/SecActionMemoManager;

    .line 172
    :cond_6
    return-void

    .line 164
    :cond_7
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final processChangeInContent(I)V
    .locals 3

    .prologue
    .line 229
    const-string v0, "TelecommApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processChangeInContent::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager;->onChangeInContent(I)V

    .line 231
    return-void
.end method

.method public final registerRcsObserver(I)V
    .locals 3

    .prologue
    .line 174
    const-string v0, "TelecommApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerRcsObserver::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/android/server/telecom/rcs/RcsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/android/server/telecom/rcs/RcsContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/rcs/RcsContentObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    if-nez v0, :cond_2

    .line 186
    new-instance v0, Lcom/android/server/telecom/rcs/RcsCapaObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/telecom/rcs/RcsCapaObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/rcs/RcsCapaObserver;->registerSelfAsObserver(Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setMWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 3

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/server/telecom/TelecomApp;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 301
    const-string v0, "TelecommApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMWindowStyle : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/TelecomApp;->mWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public final setPenWindow(Z)V
    .locals 3

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/server/telecom/TelecomApp;->isPenMultiwindow:Z

    .line 291
    const-string v0, "TelecommApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPenWindow : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/telecom/TelecomApp;->isPenMultiwindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public final unRegisterRcsObserver(I)V
    .locals 3

    .prologue
    .line 198
    const-string v0, "TelecommApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unRegisterRcsObserver::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsContentObserver:Lcom/android/server/telecom/rcs/RcsContentObserver;

    invoke-virtual {v0}, Lcom/android/server/telecom/rcs/RcsContentObserver;->unregisterSelfAsObseverAndCloseCursor()V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp;->mRcsCapaObserver:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    invoke-virtual {v0}, Lcom/android/server/telecom/rcs/RcsCapaObserver;->unregisterSelfAsObseverAndCloseCursor()V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
