.class final Lcom/android/server/telecom/TelecomApp$2;
.super Ljava/lang/Object;
.source "TelecomApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/TelecomApp;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomApp;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/telecom/TelecomApp$2;->this$0:Lcom/android/server/telecom/TelecomApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 244
    const-string v0, "AutoCSP"

    const-string v1, "AutoCSP Service Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp$2;->this$0:Lcom/android/server/telecom/TelecomApp;

    invoke-static {p2}, Lcom/android/server/telecom/IAutoCSP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/telecom/IAutoCSP;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/TelecomApp;->autoCSP:Lcom/android/server/telecom/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomApp;->access$002(Lcom/android/server/telecom/TelecomApp;Lcom/android/server/telecom/IAutoCSP;)Lcom/android/server/telecom/IAutoCSP;

    .line 250
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp$2;->this$0:Lcom/android/server/telecom/TelecomApp;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/TelecomApp;->autoCSP:Lcom/android/server/telecom/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomApp;->access$002(Lcom/android/server/telecom/TelecomApp;Lcom/android/server/telecom/IAutoCSP;)Lcom/android/server/telecom/IAutoCSP;

    .line 241
    return-void
.end method
