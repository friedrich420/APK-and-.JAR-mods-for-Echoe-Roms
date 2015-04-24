.class public Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;
.super Landroid/app/ListFragment;
.source "FingerPrintManagerListDeletenew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
    }
.end annotation


# static fields
.field private static mFingerCheckbox:Landroid/widget/CheckBox;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mItem_rename:Landroid/view/MenuItem;

.field private static mItem_trash:Landroid/view/MenuItem;

.field private static mSelectAllCheck:Landroid/widget/CheckBox;


# instance fields
.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;

.field private mEnrolledFingerCount:I

.field private mEnrolledFingerStatus:I

.field private mFingerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mListMode:I

.field private mSelectedTitle:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mlistView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    .line 74
    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    .line 75
    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    .line 86
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 87
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 722
    return-void
.end method

.method private SelectAllCheck()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 283
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    :goto_0
    return-void

    .line 285
    :cond_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 304
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 304
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->resetFingerprintSupportingFeatures()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$700()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0, "x0"    # Landroid/widget/CheckBox;

    .prologue
    .line 53
    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private checkFingerprintUsageInPersona()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 753
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 754
    .local v5, "versionInfo":Landroid/os/Bundle;
    if-eqz v5, :cond_3

    const-string v6, "2.0"

    const-string v9, "version"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "persona"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 756
    .local v3, "personaManager":Landroid/os/PersonaManager;
    if-eqz v3, :cond_2

    .line 757
    invoke-virtual {v3, v8}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    .line 758
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_3

    .line 759
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 760
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 761
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v2, v6, Landroid/content/pm/PersonaInfo;->id:I

    .line 762
    .local v2, "personaId":I
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v6

    if-ne v7, v6, :cond_0

    .line 763
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " use fingerprint as lock type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 778
    .end local v0    # "k":I
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "personaId":I
    .end local v3    # "personaManager":Landroid/os/PersonaManager;
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_1
    return v6

    .line 765
    .restart local v0    # "k":I
    .restart local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2    # "personaId":I
    .restart local v3    # "personaManager":Landroid/os/PersonaManager;
    .restart local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "knox_finger_print_plus"

    invoke-static {v6, v9, v8, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 766
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " use fingerprint plus as lock type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 767
    goto :goto_1

    .line 769
    :cond_1
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PersonaId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t use fingerprint as lock type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 774
    .end local v0    # "k":I
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "personaId":I
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2
    const-string v6, "FingerPrintManagerListDeletenew"

    const-string v7, "isFingerprintUsedinPersonas: Unable to access PersonaManager."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v3    # "personaManager":Landroid/os/PersonaManager;
    :cond_3
    const-string v6, "FingerPrintManagerListDeletenew"

    const-string v7, "isFingerprintUsedinPersonas: Any persona doesn\'t use fingerprint as lock type."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 778
    goto :goto_1
.end method

.method private checkFingerprintUsageNQuality()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 783
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 784
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 786
    .local v1, "quality":I
    const v3, 0x61000

    if-eq v1, v3, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v2

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->getCurrentLockQuality(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_0

    .line 790
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deRegisterAllFingerprint(I)V
    .locals 13
    .param p1, "selectedcount"    # I

    .prologue
    const/high16 v12, 0x1040000

    const/4 v11, 0x0

    const v10, 0x104000a

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 584
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 585
    .local v2, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 586
    .local v3, "quality":I
    const-string v5, "FingerPrintManagerListDeletenew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deRegisterAllFingerprint : selectedcount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 591
    const/4 v1, 0x0

    .line 593
    .local v1, "isKnox":Z
    const-string v5, "FingerPrintManagerListDeletenew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deRegisterAllFingerprint : Private mode is using F/P and Knox is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a1afd

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    if-eqz v1, :cond_0

    const v5, 0x7f0a1ab8

    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 601
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 699
    .end local v1    # "isKnox":Z
    :goto_1
    return-void

    .line 595
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .restart local v1    # "isKnox":Z
    :cond_0
    const v5, 0x7f0a1ab9

    goto :goto_0

    .line 603
    .end local v1    # "isKnox":Z
    :cond_1
    const v5, 0x61000

    if-ne v3, v5, :cond_5

    .line 606
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 607
    if-ne p1, v8, :cond_2

    .line 608
    const v5, 0x7f0a1ab4

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "strMessage":Ljava/lang/String;
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a1ae2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 644
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 610
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_2
    const v5, 0x7f0a1ab5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 613
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_3
    if-ne p1, v8, :cond_4

    .line 614
    const v5, 0x7f0a1ab6

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 616
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_4
    const v5, 0x7f0a1ab7

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 645
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 647
    if-ne p1, v8, :cond_6

    .line 648
    const v5, 0x7f0a1ab2

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 652
    .restart local v4    # "strMessage":Ljava/lang/String;
    :goto_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a1ae2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$6;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 671
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 650
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_6
    const v5, 0x7f0a1ab3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_3

    .line 674
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_7
    if-ne p1, v8, :cond_8

    .line 675
    const v5, 0x7f0a1ab0

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 679
    .restart local v4    # "strMessage":Ljava/lang/String;
    :goto_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a1ae2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 697
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 677
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_8
    const v5, 0x7f0a1ab1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_4
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_secret_box"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_used_samsungaccount"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 577
    :cond_1
    return v0
.end method

.method private initializeActionBarTitle()V
    .locals 4

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectedTitle:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectedTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 568
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 702
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$9;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$9;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$8;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$8;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 719
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 720
    return-void
.end method


# virtual methods
.method public checkDeleteButtonstate()V
    .locals 5

    .prologue
    const v4, 0x7f0a0c76

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 460
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 463
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02013d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 473
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 475
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 480
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 481
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    if-eq v0, v2, :cond_6

    .line 482
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 483
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 499
    :cond_2
    :goto_2
    return-void

    .line 467
    :cond_3
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 468
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02013f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 477
    :cond_4
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 485
    :cond_5
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 488
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 489
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 490
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f020206

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 491
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 493
    :cond_7
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 494
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f020207

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 495
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public customlistdelete()Z
    .locals 9

    .prologue
    .line 502
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 503
    .local v0, "count":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    .line 504
    .local v5, "selectedCount":I
    const/4 v4, 0x1

    .line 505
    .local v4, "ret_val":Z
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "customlistdelete(),  count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selected item count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-lez v0, :cond_2

    .line 509
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 510
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 511
    const/4 v1, -0x1

    .line 512
    .local v1, "enrolledListPosition":I
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    .line 513
    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 514
    add-int/lit8 v1, v1, 0x1

    .line 515
    if-ne v1, v3, :cond_0

    .line 516
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeEnrolledFinger(I)Z

    move-result v6

    and-int/2addr v4, v6

    .line 512
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 509
    .end local v1    # "enrolledListPosition":I
    .end local v2    # "index":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    .end local v3    # "position":I
    :cond_2
    if-nez v4, :cond_3

    .line 523
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->showSensorErrorDialog()V

    .line 525
    :cond_3
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    .line 134
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100191

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mButtonSellectAll:Landroid/view/View;

    .line 137
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100192

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    sput-object v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 139
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->updateFingerList()V

    .line 144
    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->setHasOptionsMenu(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 151
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 152
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0206d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 160
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 161
    const-string v3, "selectedindex"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 162
    .local v2, "selectedindex":I
    if-lez v2, :cond_2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    .line 168
    :cond_2
    const-string v3, "listmode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    .line 172
    .end local v2    # "selectedindex":I
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->SelectAllCheck()V

    .line 174
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setEnableDragBlock(Z)V

    .line 175
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    .line 209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->ToggleAllCheck(Z)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    .line 300
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 456
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 323
    const v0, 0x7f0a012f

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020210

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 327
    const v0, 0x7f0a18ca

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 330
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_trash:Landroid/view/MenuItem;

    .line 331
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    .line 333
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mListMode:I

    if-eq v0, v3, :cond_0

    .line 334
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    .line 338
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 340
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const v0, 0x7f0400bf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 119
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerPrintManagerListDeletenew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->SelectAllCheck()V

    .line 268
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1aa4

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "strSpeak":Ljava/lang/String;
    const-string v1, "FingerPrintManagerListDeletenew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 279
    .end local v0    # "strSpeak":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 274
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1aa5

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0    # "strSpeak":Ljava/lang/String;
    const-string v1, "FingerPrintManagerListDeletenew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 446
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_1
    return v7

    .line 377
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    .line 378
    .local v4, "selectedCount":I
    iget v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    if-ne v4, v7, :cond_2

    .line 380
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkFingerprintUsageInPersona()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 384
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a1cff

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 386
    const v7, 0x7f0a1cfe    # 1.83584E38f

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 389
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 390
    const/4 v7, 0x1

    goto :goto_1

    .line 392
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkFingerprintUsageNQuality()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 395
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 396
    .local v5, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 397
    .local v3, "msgText":Ljava/lang/String;
    const-string v7, "%s\n%s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0225

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a1a93

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a1b1f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 401
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a1ae9

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 406
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 407
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 410
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "msgText":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->deRegisterAllFingerprint(I)V

    goto/16 :goto_0

    .line 414
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a1ae2

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 416
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    .line 418
    .local v2, "count":I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 419
    const v7, 0x7f0a1ab0

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "tempStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 424
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$3;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$4;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 438
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 421
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v6    # "tempStr":Ljava/lang/String;
    :cond_3
    const v7, 0x7f0a1ab1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "tempStr":Ljava/lang/String;
    goto :goto_2

    .line 442
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "count":I
    .end local v4    # "selectedCount":I
    .end local v6    # "tempStr":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->renameFingerPrint()V

    goto/16 :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 114
    :cond_0
    return-void
.end method

.method public onPositiveClick()V
    .locals 0

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->updateFingerList()V

    .line 556
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 344
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 348
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 349
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 351
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 352
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 353
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 355
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    const v2, 0x7f020139

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f02013d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 359
    :cond_2
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f02013f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 364
    :cond_3
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 365
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 366
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_0
    return-void
.end method

.method public renameFingerPrint()V
    .locals 9

    .prologue
    .line 529
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 530
    .local v0, "count":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    .line 531
    .local v5, "selectedCount":I
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "customlistdelete(),  count is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selected item count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v6, "FingerPrintManagerListDeletenew"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-lez v0, :cond_2

    .line 535
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 536
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 537
    const/4 v1, -0x1

    .line 538
    .local v1, "enrolledListPosition":I
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    .line 539
    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 540
    add-int/lit8 v1, v1, 0x1

    .line 541
    if-ne v1, v3, :cond_0

    .line 542
    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v4, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(I)V

    .line 543
    .local v4, "renameDialog":Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    invoke-virtual {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 538
    .end local v4    # "renameDialog":Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    .end local v1    # "enrolledListPosition":I
    .end local v2    # "index":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    .end local v3    # "position":I
    :cond_2
    return-void
.end method

.method public updateFingerList()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    .line 218
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    if-gt v0, v5, :cond_2

    .line 219
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    .line 220
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->notifyDataSetChanged()V

    .line 250
    :cond_0
    :goto_1
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 226
    :cond_2
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    .line 227
    const/4 v6, 0x0

    .line 228
    .local v6, "fingername":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "index":I
    :goto_2
    const/4 v0, 0x3

    if-gt v7, v0, :cond_5

    .line 229
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    shl-int v1, v5, v7

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    if-eqz v6, :cond_4

    .line 232
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :goto_3
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    .line 228
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a1aae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    if-nez v0, :cond_6

    .line 240
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400c3

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    .line 241
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 248
    :goto_4
    const-string v0, "FingerPrintManagerListDeletenew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mFingerRegistedStatus] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "FingerPrintManagerListDeletenew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mEnrolledFingerCount] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mEnrolledFingerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method
