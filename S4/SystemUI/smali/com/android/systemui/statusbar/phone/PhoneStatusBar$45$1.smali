.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;)V
    .locals 0

    .prologue
    .line 5267
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5274
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5276
    return-void
.end method
