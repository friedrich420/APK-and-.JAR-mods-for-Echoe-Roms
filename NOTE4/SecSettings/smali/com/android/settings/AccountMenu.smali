.class public Lcom/android/settings/AccountMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountMenu.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccountMenu$FragContainer;
    }
.end annotation


# instance fields
.field public check_backstack:Ljava/lang/String;

.field mAccounList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/AccountMenu$FragContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountCategory:Landroid/preference/PreferenceCategory;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBrAccountMenu:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mRefreshListFilter:Landroid/content/IntentFilter;

.field private mRegistered:Z

.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AccountMenu;->check_backstack:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/android/settings/AccountMenu$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccountMenu$1;-><init>(Lcom/android/settings/AccountMenu;)V

    iput-object v0, p0, Lcom/android/settings/AccountMenu;->mBrAccountMenu:Landroid/content/BroadcastReceiver;

    .line 602
    return-void
.end method

.method private updateAccountsPrference()V
    .locals 22

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "accountTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 246
    move-object v10, v7

    .local v10, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v14, v10

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_7

    aget-object v3, v10, v13

    .line 247
    .local v3, "accountType":Ljava/lang/String;
    const/16 v16, 0x1

    .line 248
    .local v16, "showAccount":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 251
    .local v5, "label":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v6, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const-string v2, "com.android.tmo_myphonebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v6, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    :cond_0
    if-nez v5, :cond_2

    .line 246
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 266
    .local v8, "accounts":[Landroid/accounts/Account;
    array-length v2, v8

    const/4 v6, 0x1

    if-ne v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v17, 0x1

    .line 270
    .local v17, "skipToAccount":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v20

    .line 271
    .local v20, "ssoAccount":Landroid/accounts/Account;
    if-eqz v20, :cond_4

    .line 272
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/SnsAccountManager;->getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 276
    .local v18, "snsAccountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v19

    .line 277
    .local v19, "snsAccounts":[Landroid/accounts/Account;
    move-object/from16 v0, v19

    array-length v2, v0

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    :cond_3
    const/16 v17, 0x0

    .line 283
    .end local v18    # "snsAccountType":Ljava/lang/String;
    .end local v19    # "snsAccounts":[Landroid/accounts/Account;
    :cond_4
    const-string v2, "com.samsung.android.coreapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    const/16 v16, 0x0

    .line 285
    const-string v2, "AccountMenu"

    const-string v6, "Hided Easysignup account"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5
    if-eqz v16, :cond_1

    .line 289
    new-instance v12, Lcom/android/settings/AccountMenu$FragContainer;

    invoke-direct {v12}, Lcom/android/settings/AccountMenu$FragContainer;-><init>()V

    .line 291
    .local v12, "fragContainer":Lcom/android/settings/AccountMenu$FragContainer;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v9, "args":Landroid/os/Bundle;
    if-eqz v17, :cond_9

    .line 293
    const v2, 0x7f0a0c47

    invoke-virtual {v12, v2}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbTitleRes(I)V

    .line 294
    const v2, 0x7f0a0c47

    invoke-virtual {v12, v2}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbShortTitleRes(I)V

    .line 295
    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/settings/AccountMenu$FragContainer;->setTagetFragmentName(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v12}, Lcom/android/settings/AccountMenu$FragContainer;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "account_type"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v12}, Lcom/android/settings/AccountMenu$FragContainer;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "account"

    const/16 v21, 0x0

    aget-object v21, v8, v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    const-string v2, "account"

    const/4 v6, 0x0

    aget-object v6, v8, v6

    invoke-virtual {v9, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 318
    :cond_6
    :goto_3
    invoke-virtual {v12}, Lcom/android/settings/AccountMenu$FragContainer;->getFragement()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 319
    invoke-virtual {v12, v3}, Lcom/android/settings/AccountMenu$FragContainer;->setId(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 331
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v6, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 332
    .local v1, "p":Lcom/android/settings/accounts/ProviderPreference;
    invoke-virtual {v1, v3}, Lcom/android/settings/accounts/ProviderPreference;->setKey(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/settings/accounts/ProviderPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/AccountMenu;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 340
    .end local v1    # "p":Lcom/android/settings/accounts/ProviderPreference;
    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v8    # "accounts":[Landroid/accounts/Account;
    .end local v9    # "args":Landroid/os/Bundle;
    .end local v12    # "fragContainer":Lcom/android/settings/AccountMenu$FragContainer;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v16    # "showAccount":Z
    .end local v17    # "skipToAccount":Z
    .end local v20    # "ssoAccount":Landroid/accounts/Account;
    :catch_0
    move-exception v11

    .line 341
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v2, "AccountMenu"

    const-string v6, "AccountMenu - updateAccountsPrference IllegalStateException"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 344
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    return-void

    .line 266
    .restart local v3    # "accountType":Ljava/lang/String;
    .restart local v5    # "label":Ljava/lang/CharSequence;
    .restart local v8    # "accounts":[Landroid/accounts/Account;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v16    # "showAccount":Z
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 304
    .restart local v9    # "args":Landroid/os/Bundle;
    .restart local v12    # "fragContainer":Lcom/android/settings/AccountMenu$FragContainer;
    .restart local v17    # "skipToAccount":Z
    .restart local v20    # "ssoAccount":Landroid/accounts/Account;
    :cond_9
    :try_start_1
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v12, v2}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbTitle(Ljava/lang/String;)V

    .line 305
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v12, v2}, Lcom/android/settings/AccountMenu$FragContainer;->setBreadCrumbShortTitle(Ljava/lang/String;)V

    .line 306
    const-class v2, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/settings/AccountMenu$FragContainer;->setTagetFragmentName(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v12}, Lcom/android/settings/AccountMenu$FragContainer;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "account_type"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "account_type"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_6

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceActivity;

    .line 312
    .local v15, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v15}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 313
    const-string v2, "account_label"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 395
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 359
    invoke-direct {p0}, Lcom/android/settings/AccountMenu;->updateAccountsPrference()V

    .line 360
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/settings/AccountMenu;->setHasOptionsMenu(Z)V

    .line 115
    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountMenu;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    .line 118
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mUm:Landroid/os/UserManager;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/AccountMenu;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mUserHandle:Landroid/os/UserHandle;

    .line 121
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v3, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/AccountMenu;->mUserHandle:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings/AccountMenu;->mUm:Landroid/os/UserManager;

    invoke-direct {v1, v3, v4, v5, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 122
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_2

    move v0, v2

    .line 129
    .local v0, "isKnoxMode":Z
    :goto_0
    const-string v1, "vzw_bua_plus"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "vzw_bua_plus"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountMenu;->removePreference(Ljava/lang/String;)V

    .line 136
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mRefreshListFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mRefreshListFilter:Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.sns3.TwitterSSOAccountsRemoved"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/AccountMenu;->mBrAccountMenu:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/AccountMenu;->mRefreshListFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iput-boolean v2, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    .line 142
    :cond_1
    return-void

    .line 123
    .end local v0    # "isKnoxMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    move v0, v1

    .line 148
    .local v0, "isKnoxMode":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 149
    const v3, 0x7f0a1653

    invoke-interface {p1, v2, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f02020d

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 154
    :cond_0
    return-void

    .end local v0    # "isKnoxMode":Z
    :cond_1
    move v0, v2

    .line 147
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mBrAccountMenu:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    const-string v0, "AccountMenu"

    const-string v1, "AccountMenu - Finish unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccountMenu;->mRegistered:Z

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "helphub:appid"

    const-string v3, "account"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "account"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 194
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 365
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/AccountMenu$FragContainer;

    .line 366
    .local v9, "fc":Lcom/android/settings/AccountMenu$FragContainer;
    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->check_backstack:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 368
    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getBreadCrumbTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->check_backstack:Ljava/lang/String;

    .line 369
    invoke-static {}, Lcom/android/settings/Utils;->isGridSettingEnabed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 371
    .local v0, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getTargetFragmentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getFragement()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getBreadCrumbTitleRes()I

    move-result v3

    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getBreadCrumbTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 382
    .end local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :goto_0
    const/4 v6, 0x1

    .line 385
    .end local v9    # "fc":Lcom/android/settings/AccountMenu$FragContainer;
    :cond_1
    return v6

    .line 375
    .restart local v9    # "fc":Lcom/android/settings/AccountMenu$FragContainer;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccountMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getTargetFragmentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getFragement()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getBreadCrumbTitleRes()I

    move-result v7

    invoke-virtual {v9}, Lcom/android/settings/AccountMenu$FragContainer;->getBreadCrumbTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_3
    const-string v1, "AccountMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prevent to dobule click about same account = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AccountMenu;->check_backstack:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 180
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/AccountMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/AccountMenu;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "accountTypes":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mAccounList:Ljava/util/List;

    .line 185
    const-string v1, "account_menu_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->mAccountCategory:Landroid/preference/PreferenceCategory;

    .line 186
    invoke-direct {p0}, Lcom/android/settings/AccountMenu;->updateAccountsPrference()V

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/AccountMenu;->check_backstack:Ljava/lang/String;

    .line 188
    const-string v1, "AccountMenu"

    const-string v2, "Initialize check_backstack value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method
