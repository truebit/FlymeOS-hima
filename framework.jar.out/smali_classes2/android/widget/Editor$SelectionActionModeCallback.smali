.class Landroid/widget/Editor$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 10

    const/4 v9, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x15

    if-ge v5, v8, :cond_4

    move v3, v7

    :goto_0
    if-nez v3, :cond_5

    instance-of v5, p2, Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v5, :cond_5

    move-object v5, p2

    check-cast v5, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_1
    sget-object v5, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v2, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x1040453

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v7}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    const v5, 0x102001f

    const v8, 0x104000d

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x61

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x1020020

    const v8, 0x1040003

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x78

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x1020021

    const v8, 0x1040001

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x63

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x1020022

    const v8, 0x104000b

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x76

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v8, 0x1010479

    invoke-virtual {v5, v8, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/16 v5, 0x54e

    const v8, 0x1040559

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget v8, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x73

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v8, 0x101047b

    invoke-virtual {v5, v8, v0, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/16 v5, 0x54d

    const v8, 0x104055b

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget v8, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x77

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v5, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    :goto_2
    return v5

    :cond_4
    move v3, v6

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    :cond_7
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    :cond_8
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHasTransientState(Z)V

    move v5, v7

    goto :goto_2

    :cond_9
    move v5, v6

    goto :goto_2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHasTransientState(Z)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasHtcTextSelectionManager()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, v2, v0}, Lcom/htc/textselection/TextSelectionManager;->onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    return-void

    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v0}, Landroid/widget/Editor;->access$2602(Landroid/widget/Editor;Z)Z

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method