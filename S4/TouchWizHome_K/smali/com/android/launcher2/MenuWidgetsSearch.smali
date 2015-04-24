.class Lcom/android/launcher2/MenuWidgetsSearch;
.super Ljava/lang/Object;
.source "MenuWidgetsSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;
    }
.end annotation


# static fields
.field private static final MENU_WIDGET_KEYBOARD_IS_UP:Ljava/lang/String; = "MENU_WIDGET_KEYBOARD_IS_UP"

.field private static final MENU_WIDGET_SEARCH_PATTERN:Ljava/lang/String; = "MENU_WIDGET_SEARCH_PATTERN"


# instance fields
.field private mMenuSelBackDown:Landroid/view/View;

.field private mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

.field private mSearchEdit:Landroid/widget/SearchView;

.field private mSkippedFirst:Z

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V
    .locals 6
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;
    .param p2, "menuWidgets"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v5, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    .line 44
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    .line 48
    iput-object p2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 50
    .local v2, "searchTitleBar":Landroid/view/ViewGroup;
    const v3, 0x7f0f00cd

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    .line 51
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 52
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 54
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const v4, 0x2000003

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 57
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isWidgetSearchTextColorLight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android:id/search_src_text"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "searchTextId":I
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 60
    .local v0, "searchPlate":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 61
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 64
    .end local v0    # "searchPlate":Landroid/widget/AutoCompleteTextView;
    .end local v1    # "searchTextId":I
    :cond_0
    const v3, 0x7f0f00a7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgetsSearch;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgetsSearch;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgetsSearch;)Lcom/android/launcher2/MenuWidgets;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgetsSearch;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 193
    :cond_0
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 90
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 91
    .local v0, "immediate":Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, p2, v3, v0}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuWidgets$WidgetState;Z)V

    .line 93
    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    .line 94
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    new-instance v2, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;-><init>(Lcom/android/launcher2/MenuWidgetsSearch;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V

    .line 96
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 102
    :cond_1
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq p1, v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 105
    :cond_2
    return-void

    .end local v0    # "immediate":Z
    :cond_3
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public exit(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v2, 0x80

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 121
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-boolean v0, v0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 131
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuSelBackDown:Landroid/view/View;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    .line 113
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 172
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsSearch;->closeKeyboard()V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 187
    :cond_0
    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const-string v1, "MENU_WIDGET_SEARCH_PATTERN"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 144
    const-string v0, "MENU_WIDGET_KEYBOARD_IS_UP"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const-string v0, "MENU_WIDGET_SEARCH_PATTERN"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "MENU_WIDGET_KEYBOARD_IS_UP"

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method
