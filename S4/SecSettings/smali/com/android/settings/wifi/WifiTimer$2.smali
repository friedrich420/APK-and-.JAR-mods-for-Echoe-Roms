.class Lcom/android/settings/wifi/WifiTimer$2;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    # getter for: Lcom/android/settings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$200(Lcom/android/settings/wifi/WifiTimer;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    # getter for: Lcom/android/settings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$200(Lcom/android/settings/wifi/WifiTimer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    # invokes: Lcom/android/settings/wifi/WifiTimer;->hideKeypad()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$100(Lcom/android/settings/wifi/WifiTimer;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    # getter for: Lcom/android/settings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$200(Lcom/android/settings/wifi/WifiTimer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mEndTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$2;->this$0:Lcom/android/settings/wifi/WifiTimer;

    # getter for: Lcom/android/settings/wifi/WifiTimer;->mEndTimeCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$200(Lcom/android/settings/wifi/WifiTimer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
