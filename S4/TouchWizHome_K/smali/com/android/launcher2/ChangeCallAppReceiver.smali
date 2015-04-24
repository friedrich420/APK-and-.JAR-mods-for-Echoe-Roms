.class public Lcom/android/launcher2/ChangeCallAppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChangeCallAppReceiver.java"


# static fields
.field public static final CHANGE_TPHONE_MODE:Ljava/lang/String; = "com.sec.android.favoriteapp.CHANGE_TPHONE_MODE"

.field private static mHomeView:Lcom/android/launcher2/HomeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .param p1, "hf"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 13
    sput-object p1, Lcom/android/launcher2/ChangeCallAppReceiver;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 14
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    if-nez p2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.android.favoriteapp.CHANGE_TPHONE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "ChangeCallAppReceiver"

    const-string v2, "broadcastReceived: com.sec.android.favoriteapp.CHANGE_TPHONE_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v1, Lcom/android/launcher2/ChangeCallAppReceiver;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    .line 25
    sget-object v1, Lcom/android/launcher2/ChangeCallAppReceiver;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ChangeCallAppReceiver;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherModel;->ChangeTphoneMode(Lcom/android/launcher2/HomeView;)V

    goto :goto_0
.end method
