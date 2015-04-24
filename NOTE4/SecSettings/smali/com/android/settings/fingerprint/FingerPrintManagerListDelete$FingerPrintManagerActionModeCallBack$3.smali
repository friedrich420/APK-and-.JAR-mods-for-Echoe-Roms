.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->access$1100(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 692
    if-eqz p2, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Z)V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Z)V

    goto :goto_0
.end method
