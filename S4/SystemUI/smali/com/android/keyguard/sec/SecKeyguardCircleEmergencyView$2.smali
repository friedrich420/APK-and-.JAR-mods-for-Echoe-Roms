.class Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;
.super Landroid/telephony/PhoneStateListener;
.source "SecKeyguardCircleEmergencyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 167
    const-string v2, "SecKeyguardCircleEmergencyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceStateChanged(SLOT1) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 169
    .local v0, "phoneState":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$400(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 171
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    # setter for: Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I
    invoke-static {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$502(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I

    .line 173
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 174
    return-void
.end method
