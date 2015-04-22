.class Lcom/sec/android/sviewcover/SViewCoverView$6;
.super Landroid/telephony/PhoneStateListener;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$6;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2400(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 1017
    return-void
.end method
