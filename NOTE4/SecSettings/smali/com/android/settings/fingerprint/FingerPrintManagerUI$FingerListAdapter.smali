.class public Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FingerPrintManagerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerUI;
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
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerUI;Landroid/content/Context;IILjava/util/List;)V
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
    .line 441
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    .line 442
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 444
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 447
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 448
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400c3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 450
    const v3, 0x7f1001e5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 451
    .local v0, "fingerName":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 452
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return-object p2
.end method
