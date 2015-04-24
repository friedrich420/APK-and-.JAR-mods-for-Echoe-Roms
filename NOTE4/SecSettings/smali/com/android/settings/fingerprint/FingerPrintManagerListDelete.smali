.class public Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
.super Landroid/app/ListFragment;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;,
        Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
    }
.end annotation


# static fields
.field private static mFingerCheckbox:Landroid/widget/CheckBox;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mItem_rename:Landroid/view/MenuItem;

.field private static mItem_trash:Landroid/view/MenuItem;


# instance fields
.field public actionModeControl:Z

.field private listpopup:Landroid/widget/ListPopupWindow;

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

.field private mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

.field private mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mListMode:I

.field private mMultiActionMode:Landroid/view/ActionMode;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mlistView:Landroid/widget/ListView;

.field private select:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    .line 79
    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    .line 80
    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    .line 87
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    .line 90
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 98
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 873
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 315
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 315
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    .line 320
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    .line 322
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1, "x1"    # Landroid/view/ActionMode;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->deRegisterAllFingerprint(Landroid/view/ActionMode;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1702(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$1800()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0
    .param p0, "x0"    # Landroid/widget/CheckBox;

    .prologue
    .line 58
    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->resetFingerprintSupportingFeatures()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageInPersona()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageNQuality()Z

    move-result v0

    return v0
.end method

.method private checkFingerprintUsageInPersona()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 904
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 905
    .local v5, "versionInfo":Landroid/os/Bundle;
    if-eqz v5, :cond_3

    const-string v6, "2.0"

    const-string v9, "version"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "persona"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 907
    .local v3, "personaManager":Landroid/os/PersonaManager;
    if-eqz v3, :cond_2

    .line 908
    invoke-virtual {v3, v8}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    .line 909
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_3

    .line 910
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 911
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 912
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v2, v6, Landroid/content/pm/PersonaInfo;->id:I

    .line 913
    .local v2, "personaId":I
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v6

    if-ne v7, v6, :cond_0

    .line 914
    const-string v6, "FingerPrintManagerListDelete"

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

    .line 929
    .end local v0    # "k":I
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "personaId":I
    .end local v3    # "personaManager":Landroid/os/PersonaManager;
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_1
    return v6

    .line 916
    .restart local v0    # "k":I
    .restart local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2    # "personaId":I
    .restart local v3    # "personaManager":Landroid/os/PersonaManager;
    .restart local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "knox_finger_print_plus"

    invoke-static {v6, v9, v8, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 917
    const-string v6, "FingerPrintManagerListDelete"

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

    .line 918
    goto :goto_1

    .line 920
    :cond_1
    const-string v6, "FingerPrintManagerListDelete"

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

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 925
    .end local v0    # "k":I
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "personaId":I
    .end local v4    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2
    const-string v6, "FingerPrintManagerListDelete"

    const-string v7, "isFingerprintUsedinPersonas: Unable to access PersonaManager."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v3    # "personaManager":Landroid/os/PersonaManager;
    :cond_3
    const-string v6, "FingerPrintManagerListDelete"

    const-string v7, "isFingerprintUsedinPersonas: Any persona doesn\'t use fingerprint as lock type."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 929
    goto :goto_1
.end method

.method private checkFingerprintUsageNQuality()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 935
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 936
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 938
    .local v1, "quality":I
    const v3, 0x61000

    if-eq v1, v3, :cond_1

    .line 944
    :cond_0
    :goto_0
    return v2

    .line 941
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->getCurrentLockQuality(Landroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x10000

    if-lt v3, v4, :cond_0

    .line 942
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deRegisterAllFingerprint(Landroid/view/ActionMode;I)V
    .locals 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "selectedcount"    # I

    .prologue
    const/high16 v12, 0x1040000

    const/4 v11, 0x0

    const v10, 0x104000a

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 464
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 465
    .local v2, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 466
    .local v3, "quality":I
    const-string v5, "FingerPrintManagerListDelete"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deRegisterAllFingerprint : selectedcount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 471
    const/4 v1, 0x0

    .line 473
    .local v1, "isKnox":Z
    const-string v5, "FingerPrintManagerListDelete"

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

    .line 475
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

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

    .line 481
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 588
    .end local v1    # "isKnox":Z
    :goto_1
    return-void

    .line 475
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .restart local v1    # "isKnox":Z
    :cond_0
    const v5, 0x7f0a1ab9

    goto :goto_0

    .line 483
    .end local v1    # "isKnox":Z
    :cond_1
    const v5, 0x61000

    if-ne v3, v5, :cond_5

    .line 486
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 487
    if-ne p2, v8, :cond_2

    .line 488
    const v5, 0x7f0a1ab4

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "strMessage":Ljava/lang/String;
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a1ae2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 527
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 490
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_2
    const v5, 0x7f0a1ab5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 493
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_3
    if-ne p2, v8, :cond_4

    .line 494
    const v5, 0x7f0a1ab6

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 496
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_4
    const v5, 0x7f0a1ab7

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 528
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getFingerprintSupportingFeatures()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 530
    if-ne p2, v8, :cond_6

    .line 531
    const v5, 0x7f0a1ab2

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 535
    .restart local v4    # "strMessage":Ljava/lang/String;
    :goto_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a1ae2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$4;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 557
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 533
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_6
    const v5, 0x7f0a1ab3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_3

    .line 560
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_7
    if-ne p2, v8, :cond_8

    .line 561
    const v5, 0x7f0a1ab0

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 565
    .restart local v4    # "strMessage":Ljava/lang/String;
    :goto_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a1ae2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 586
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 563
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "strMessage":Ljava/lang/String;
    :cond_8
    const v5, 0x7f0a1ab1

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strMessage":Ljava/lang/String;
    goto :goto_4
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_secret_box"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_used_samsungaccount"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 457
    :cond_1
    return v0
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    :cond_0
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 591
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 601
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 602
    return-void
.end method


# virtual methods
.method public checkDeleteButtonstate()V
    .locals 5

    .prologue
    const v4, 0x7f0a0c76

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 335
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 338
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02013d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 348
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 350
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 355
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    if-eq v0, v2, :cond_6

    .line 356
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 357
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 375
    :cond_2
    :goto_2
    return-void

    .line 342
    :cond_3
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 343
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02013f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 352
    :cond_4
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 359
    :cond_5
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 363
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 365
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f020206

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 366
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 368
    :cond_7
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 369
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 370
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f020207

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 371
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public customlistdelete()V
    .locals 9

    .prologue
    .line 378
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 379
    .local v0, "count":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    .line 380
    .local v5, "selectedCount":I
    const/4 v4, 0x1

    .line 381
    .local v4, "ret_val":Z
    const-string v6, "FingerPrintManagerListDelete"

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

    .line 382
    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-lez v0, :cond_2

    .line 385
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 386
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 387
    const/4 v1, -0x1

    .line 388
    .local v1, "enrolledListPosition":I
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    .line 389
    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 390
    add-int/lit8 v1, v1, 0x1

    .line 391
    if-ne v1, v3, :cond_0

    .line 392
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v6, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeEnrolledFinger(I)Z

    move-result v6

    and-int/2addr v4, v6

    .line 388
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 385
    .end local v1    # "enrolledListPosition":I
    .end local v2    # "index":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v3    # "position":I
    :cond_2
    if-nez v4, :cond_3

    .line 399
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V

    .line 401
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 162
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    .line 165
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->updateFingerList()V

    .line 172
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->setHasOptionsMenu(Z)V

    .line 176
    :cond_0
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 180
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 181
    const-string v2, "selectedindex"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, "selectedindex":I
    if-lez v1, :cond_1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    .line 188
    :cond_1
    const-string v2, "listmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    .line 189
    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    if-eq v2, v5, :cond_2

    .line 190
    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    .line 191
    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    :cond_2
    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mListMode:I

    if-ne v2, v5, :cond_3

    .line 196
    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 198
    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v3, 0x7f020206

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 204
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    .line 207
    .end local v1    # "selectedindex":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 208
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 210
    :cond_5
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setEnableDragBlock(Z)V

    .line 211
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    .line 241
    return-void

    .line 200
    .restart local v1    # "selectedindex":I
    :cond_6
    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;

    const v3, 0x7f020207

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 331
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 107
    const v1, 0x7f0400be

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f1001dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->textView:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->textView:Landroid/widget/TextView;

    const v2, 0x7f0a1aaf

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->textView:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 112
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 145
    const-string v1, "FingerPrintManagerListDelete"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    .line 148
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerPrintManagerListDelete"

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

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    .line 288
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1aa4

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "strSpeak":Ljava/lang/String;
    const-string v1, "FingerPrintManagerListDelete"

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

    .line 300
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 307
    .end local v0    # "strSpeak":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1, p3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 302
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1aa5

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0    # "strSpeak":Ljava/lang/String;
    const-string v1, "FingerPrintManagerListDelete"

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

    .line 304
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 140
    :cond_0
    return-void
.end method

.method public onPositiveClick()V
    .locals 0

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->updateFingerList()V

    .line 431
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 131
    :cond_0
    return-void
.end method

.method public renameFingerPrint()V
    .locals 9

    .prologue
    .line 404
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 405
    .local v0, "count":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    .line 406
    .local v5, "selectedCount":I
    const-string v6, "FingerPrintManagerListDelete"

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

    .line 407
    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mFingerRegistedStatus] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v6, "FingerPrintManagerListDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[mEnrolledFingerCount] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-lez v0, :cond_2

    .line 410
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 411
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 412
    const/4 v1, -0x1

    .line 413
    .local v1, "enrolledListPosition":I
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_1
    const/4 v6, 0x3

    if-gt v2, v6, :cond_1

    .line 414
    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 415
    add-int/lit8 v1, v1, 0x1

    .line 416
    if-ne v1, v3, :cond_0

    .line 417
    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v4, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(I)V

    .line 418
    .local v4, "renameDialog":Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    invoke-virtual {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 413
    .end local v4    # "renameDialog":Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 410
    .end local v1    # "enrolledListPosition":I
    .end local v2    # "index":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    .end local v3    # "position":I
    :cond_2
    return-void
.end method

.method public updateFingerList()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    .line 250
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    if-gt v0, v5, :cond_2

    .line 251
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    .line 252
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;->notifyDataSetChanged()V

    .line 282
    :cond_0
    :goto_1
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 258
    :cond_2
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    .line 259
    const/4 v6, 0x0

    .line 260
    .local v6, "fingername":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "index":I
    :goto_2
    const/4 v0, 0x3

    if-gt v7, v0, :cond_5

    .line 261
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    shl-int v1, v5, v7

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v6

    .line 263
    if-eqz v6, :cond_4

    .line 264
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :goto_3
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    .line 260
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getResources()Landroid/content/res/Resources;

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

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    if-nez v0, :cond_6

    .line 272
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400c3

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    .line 273
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 280
    :goto_4
    const-string v0, "FingerPrintManagerListDelete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mFingerRegistedStatus] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "FingerPrintManagerListDelete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mEnrolledFingerCount] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method
