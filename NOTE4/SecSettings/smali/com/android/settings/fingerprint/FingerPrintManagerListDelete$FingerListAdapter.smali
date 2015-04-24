.class public Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FingerPrintManagerListDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
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
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/content/Context;IILjava/util/List;)V
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
    .line 875
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .line 876
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 878
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

    .line 886
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 887
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400c2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 888
    const v3, 0x7f1001e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1802(Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 890
    const v3, 0x7f1001e5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 891
    .local v0, "fingerName":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 892
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1800()Landroid/widget/CheckBox;

    move-result-object v3

    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 895
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1800()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 896
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1800()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 898
    return-object p2
.end method

.method public setChecked(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 883
    return-void
.end method
