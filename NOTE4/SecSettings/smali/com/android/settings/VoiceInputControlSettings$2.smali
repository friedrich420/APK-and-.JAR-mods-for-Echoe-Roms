.class Lcom/android/settings/VoiceInputControlSettings$2;
.super Landroid/os/Handler;
.source "VoiceInputControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VoiceInputControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I
    invoke-static {v0, v1}, Lcom/android/settings/VoiceInputControlSettings;->access$102(Lcom/android/settings/VoiceInputControlSettings;I)I

    .line 278
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    # invokes: Lcom/android/settings/VoiceInputControlSettings;->showHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$200(Lcom/android/settings/VoiceInputControlSettings;)V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    # getter for: Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$300(Lcom/android/settings/VoiceInputControlSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    # invokes: Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$400(Lcom/android/settings/VoiceInputControlSettings;)V

    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings$2;->this$0:Lcom/android/settings/VoiceInputControlSettings;

    # invokes: Lcom/android/settings/VoiceInputControlSettings;->setTabletView()V
    invoke-static {v0}, Lcom/android/settings/VoiceInputControlSettings;->access$500(Lcom/android/settings/VoiceInputControlSettings;)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
