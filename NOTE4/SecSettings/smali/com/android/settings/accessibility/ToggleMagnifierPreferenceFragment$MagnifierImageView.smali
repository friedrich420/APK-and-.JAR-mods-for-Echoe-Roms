.class public Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;
.super Landroid/preference/Preference;
.source "ToggleMagnifierPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagnifierImageView"
.end annotation


# instance fields
.field public currentMag:I

.field public img:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mIcon:[I

.field public mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setValue"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 228
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mIcon:[I

    .line 239
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    .line 240
    const v0, 0x7f04011f

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->setLayoutResource(I)V

    .line 241
    iput p2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    .line 242
    iput-boolean p3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mEnabled:Z

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->setSelectable(Z)V

    .line 244
    return-void

    .line 228
    nop

    :array_0
    .array-data 4
        0x7f02040b
        0x7f02040c
        0x7f02040d
        0x7f02040e
        0x7f02040f
        0x7f020410
        0x7f020411
        0x7f020412
    .end array-data
.end method


# virtual methods
.method public ImageChange(I)V
    .locals 3
    .param p1, "zoomvalue"    # I

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 278
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 279
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 282
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 259
    const v0, 0x7f10028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    .line 260
    const v0, 0x7f10028d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    .line 261
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    .line 263
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mEnabled:Z

    .line 271
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setHoverZoomImageLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    .line 248
    iget v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    .line 249
    return-void
.end method
