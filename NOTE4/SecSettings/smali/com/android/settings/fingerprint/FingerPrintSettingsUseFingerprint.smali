.class public Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;
.super Landroid/app/Activity;
.source "FingerPrintSettingsUseFingerprint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 59
    const/16 v0, 0x400

    .line 60
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 63
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x4000c00

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 51
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->finish()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x7f10001a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 35
    :cond_0
    const v1, 0x7f0400bd

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->setContentView(I)V

    .line 37
    const v1, 0x7f10001a

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {}, Lcom/android/settings/Utils;->isVideoSequenceModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;->setIndicatorTransparency()V

    .line 43
    :cond_1
    return-void
.end method
