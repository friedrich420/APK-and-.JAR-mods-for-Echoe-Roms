.class Lcom/android/settings/GridSettings$SettingsTabListener;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/GridSettings;
    .param p2, "x1"    # Lcom/android/settings/GridSettings$1;

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1333
    # getter for: Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabReselected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1305
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    # getter for: Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$2200(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    # getter for: Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$2200(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    iget-boolean v0, v0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-nez v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    # setter for: Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/GridSettings;->access$702(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 1312
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    # setter for: Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/GridSettings;->access$802(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 1313
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->invalidateHeaders()V

    .line 1316
    :cond_1
    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    # getter for: Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$2300(Lcom/android/settings/GridSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1318
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1323
    :cond_3
    :goto_0
    # getter for: Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabSelected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1320
    :cond_4
    iget-object v0, p0, Lcom/android/settings/GridSettings$SettingsTabListener;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1328
    # getter for: Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTabUnselected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return-void
.end method
