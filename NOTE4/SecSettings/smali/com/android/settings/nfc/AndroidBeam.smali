.class public Lcom/android/settings/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mExplainImageView:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/AndroidBeam$1;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/AndroidBeam;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/AndroidBeam;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/AndroidBeam;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/AndroidBeam;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/AndroidBeam;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private getActionBarView()Landroid/view/View;
    .locals 7

    .prologue
    .line 231
    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 232
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_container"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "resId":I
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 241
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const v2, 0x7f100055

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 243
    .local v1, "mTextView":Landroid/widget/TextView;
    const v2, 0x7f0a0371

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 246
    .end local v1    # "mTextView":Landroid/widget/TextView;
    :cond_0
    const v2, 0x7f100056

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    .line 247
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 250
    .local v0, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 251
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v4, 0x1

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 257
    if-eqz p2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v1

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_beam_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    if-nez p2, :cond_1

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 298
    return-void

    .line 261
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a19fe

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 265
    const v2, 0x7f0a1a00

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/nfc/AndroidBeam$2;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AndroidBeam$2;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/nfc/AndroidBeam$3;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AndroidBeam$3;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    new-instance v2, Lcom/android/settings/nfc/AndroidBeam$4;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/AndroidBeam$4;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 288
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 204
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    .line 110
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    .line 112
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    .local v0, "padding":I
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 122
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a036b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 127
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 130
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 189
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/AndroidBeam;->initView(Landroid/view/View;)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "actionBar":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 193
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 144
    sget-boolean v0, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AndroidBeam"

    const-string v3, "ABeam onResume & registerReceiver"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, "mUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 150
    .local v7, "mContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isAndroidBeamAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 152
    .local v8, "mRestrictionCr":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    :try_start_0
    const-string v0, "isAndroidBeamAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 171
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v6

    .line 161
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setClickable(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 177
    sget-boolean v1, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "AndroidBeam"

    const-string v2, "ABeam onStop & unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "AndroidBeam"

    const-string v2, "no BroadcastReceiver to be unregistered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
