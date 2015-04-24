.class final Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;
.super Ljava/lang/Object;
.source "DriveLinkDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    .line 125
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->finish()V

    .line 129
    return-void
.end method
