.class public Lcom/android/settings/SViewCoverEdgeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SViewCoverEdgeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentView:Landroid/view/View;

.field private final mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

.field mImageButtonArray:[Landroid/widget/ImageButton;

.field private mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

.field private mImageButtonListner:Landroid/view/View$OnClickListener;

.field private mIsActionBarFocused:Z

.field private mWallpaperEnalbed:Z

.field private mWallpaperType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mIsActionBarFocused:Z

    .line 64
    new-instance v0, Lcom/android/settings/SViewCoverEdgeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SViewCoverEdgeSettings$1;-><init>(Lcom/android/settings/SViewCoverEdgeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

    .line 246
    new-instance v0, Lcom/android/settings/SViewCoverEdgeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewCoverEdgeSettings$2;-><init>(Lcom/android/settings/SViewCoverEdgeSettings;)V

    iput-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonListner:Landroid/view/View$OnClickListener;

    .line 276
    new-instance v0, Lcom/android/settings/SViewCoverEdgeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewCoverEdgeSettings$3;-><init>(Lcom/android/settings/SViewCoverEdgeSettings;)V

    iput-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SViewCoverEdgeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewCoverEdgeSettings;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SViewCoverEdgeSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewCoverEdgeSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SViewCoverEdgeSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewCoverEdgeSettings;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SViewCoverEdgeSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewCoverEdgeSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/SViewCoverEdgeSettings;->setfocusButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SViewCoverEdgeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SViewCoverEdgeSettings;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/SViewCoverEdgeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SViewCoverEdgeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    return p1
.end method

.method private setfocusButton(Z)V
    .locals 3
    .param p1, "needkeyboardfocus"    # Z

    .prologue
    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 235
    iget v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mIsActionBarFocused:Z

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f020098

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 242
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->invalidate()V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 244
    :cond_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 226
    iput-boolean p2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_edge_wallpaper"

    iget-boolean v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    const-string v0, "SViewCoverEdgeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged() enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v1}, Lcom/android/settings/SViewCoverEdgeSettings;->setfocusButton(Z)V

    .line 231
    return-void

    :cond_0
    move v0, v1

    .line 227
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x10

    const/4 v3, 0x1

    const/4 v9, -0x2

    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 79
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 81
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 82
    instance-of v5, v0, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 83
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 84
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 87
    .local v1, "padding":I
    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    .line 98
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_edge_wallpaper"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    .line 100
    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    return-void

    :cond_2
    move v3, v4

    .line 98
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    const v2, 0x7f040222

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    .line 108
    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    const v6, 0x7f1000c6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v5, v4

    .line 109
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v4

    const v5, 0x7f0a0f93

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SViewCoverEdgeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 113
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/16 v5, 0x3231

    invoke-virtual {v2, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 117
    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    const v6, 0x7f1000c7

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v5, v3

    .line 118
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v3

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v3

    const v5, 0x7f0a0f93

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SViewCoverEdgeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v3

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 122
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/16 v5, 0x3231

    invoke-virtual {v2, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 126
    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    const v6, 0x7f1000c8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v5, v8

    .line 127
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v8

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v8

    const v5, 0x7f0a0f93

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SViewCoverEdgeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v8

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/16 v5, 0x3231

    invoke-virtual {v2, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 135
    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    const v6, 0x7f1000c9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v5, v9

    .line 136
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v9

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v9

    const v5, 0x7f0a0f93

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SViewCoverEdgeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v9

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/16 v5, 0x3231

    invoke-virtual {v2, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sview_edge_wallpaper"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperEnalbed:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sview_edge_wallpaper_type"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    .line 150
    iget v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getColorOfCover(Landroid/content/Context;)I

    move-result v1

    .line 152
    .local v1, "covercolor":I
    if-ne v1, v3, :cond_3

    .line 154
    iput v8, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    .line 158
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "sview_edge_wallpaper_type"

    iget v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    .end local v1    # "covercolor":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/SViewCoverEdgeSettings;->setfocusButton(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 164
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/settings/SViewCoverEdgeSettings;->setHasOptionsMenu(Z)V

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    return-object v2

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    move v2, v4

    .line 144
    goto :goto_0

    .line 156
    .restart local v1    # "covercolor":I
    :cond_3
    iput v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperType:I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 216
    :pswitch_0
    const-string v0, "SViewCoverEdgeSettings"

    const-string v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->finish()V

    .line 218
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 209
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "super_mOpenDetailMenu":Z
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 181
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_edge_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverEdgeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 202
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 203
    return-void
.end method
