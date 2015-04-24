.class final Lcom/android/server/telecom/CallAudioManager$1;
.super Ljava/lang/Object;
.source "CallAudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/CallAudioManager;->requestAudioFocusAndSetMode(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/CallAudioManager;

.field private synthetic val$mMode:I

.field private synthetic val$mStream:I


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CallAudioManager;II)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager$1;->this$0:Lcom/android/server/telecom/CallAudioManager;

    iput p2, p0, Lcom/android/server/telecom/CallAudioManager$1;->val$mStream:I

    iput p3, p0, Lcom/android/server/telecom/CallAudioManager$1;->val$mMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 707
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager$1;->this$0:Lcom/android/server/telecom/CallAudioManager;

    # getter for: Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I
    invoke-static {v0}, Lcom/android/server/telecom/CallAudioManager;->access$000(Lcom/android/server/telecom/CallAudioManager;)I

    move-result v0

    iget v1, p0, Lcom/android/server/telecom/CallAudioManager$1;->val$mStream:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    const-string v0, "requesting audio focus for stream: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/CallAudioManager$1;->val$mStream:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager$1;->this$0:Lcom/android/server/telecom/CallAudioManager;

    iget-object v0, v0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/server/telecom/CallAudioManager$1;->val$mStream:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager$1;->this$0:Lcom/android/server/telecom/CallAudioManager;

    iget v1, p0, Lcom/android/server/telecom/CallAudioManager$1;->val$mStream:I

    # setter for: Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->access$002(Lcom/android/server/telecom/CallAudioManager;I)I

    .line 713
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager$1;->this$0:Lcom/android/server/telecom/CallAudioManager;

    iget v1, p0, Lcom/android/server/telecom/CallAudioManager$1;->val$mMode:I

    # invokes: Lcom/android/server/telecom/CallAudioManager;->setMode(I)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->access$100(Lcom/android/server/telecom/CallAudioManager;I)V

    .line 714
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIncomingCallAnswered(Z)V

    .line 715
    return-void
.end method
