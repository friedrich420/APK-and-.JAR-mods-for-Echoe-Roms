.class public Lcom/android/settings/location/DimmableIconPreference;
.super Landroid/preference/Preference;
.source "DimmableIconPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/android/settings/location/DimmableIconPreference;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private dimIcon(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/location/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    return-void

    .line 57
    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/location/DimmableIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0f00ce

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 80
    .local v3, "viewSize":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v4, v3, -0x14

    add-int/lit8 v5, v3, -0xa

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x1

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p2}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    .line 65
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 66
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    .line 71
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 72
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
