.class Lcom/android/settings/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "KnoxChooseLockTwoFactor.java"


# instance fields
.field private mChecked:Z

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 424
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 420
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 415
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 416
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 429
    const v0, 0x7f1003ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 430
    iget-boolean v0, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 431
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 441
    iput-boolean p1, p0, Lcom/android/settings/RadioButtonPreference;->mChecked:Z

    .line 443
    :cond_0
    return-void
.end method
