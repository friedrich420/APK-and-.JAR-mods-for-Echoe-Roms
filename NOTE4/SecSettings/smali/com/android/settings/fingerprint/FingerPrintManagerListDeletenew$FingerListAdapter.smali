.class public Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FingerPrintManagerListDeletenew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    .line 725
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 727
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 735
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 736
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400c2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 738
    const v3, 0x7f1001e5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 739
    .local v0, "fingerName":Landroid/widget/TextView;
    const v3, 0x7f1001e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$702(Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 740
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 741
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$700()Landroid/widget/CheckBox;

    move-result-object v3

    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 744
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$700()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 745
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$700()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 747
    return-object p2
.end method

.method public setChecked(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 732
    return-void
.end method
