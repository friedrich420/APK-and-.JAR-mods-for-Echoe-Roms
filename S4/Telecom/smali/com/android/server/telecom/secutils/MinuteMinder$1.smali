.class final Lcom/android/server/telecom/secutils/MinuteMinder$1;
.super Ljava/lang/Object;
.source "MinuteMinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/MinuteMinder;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/MinuteMinder;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/MinuteMinder;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/telecom/secutils/MinuteMinder$1;->this$0:Lcom/android/server/telecom/secutils/MinuteMinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/telecom/secutils/MinuteMinder$1;->this$0:Lcom/android/server/telecom/secutils/MinuteMinder;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/MinuteMinder;->releasePartialWakeLock()V

    .line 58
    return-void
.end method
