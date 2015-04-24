.class final Lcom/android/server/telecom/TelecomApp$1;
.super Landroid/database/ContentObserver;
.source "TelecomApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/TelecomApp;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomApp;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/telecom/TelecomApp$1;->this$0:Lcom/android/server/telecom/TelecomApp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 147
    const-string v0, "TelecommApp"

    const-string v1, "RcsSessionObserver::onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/telecom/TelecomApp$1;->this$0:Lcom/android/server/telecom/TelecomApp;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomApp;->processChangeInContent(I)V

    .line 149
    return-void
.end method
