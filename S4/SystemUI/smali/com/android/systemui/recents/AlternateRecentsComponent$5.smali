.class Lcom/android/systemui/recents/AlternateRecentsComponent$5;
.super Landroid/os/Handler;
.source "AlternateRecentsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$5;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 898
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 900
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$5;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    # getter for: Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->access$100(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$5;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    # getter for: Lcom/android/systemui/recents/AlternateRecentsComponent;->mRecentHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->access$100(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
