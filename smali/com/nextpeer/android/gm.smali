.class public final Lcom/nextpeer/android/gm;
.super Lcom/nextpeer/android/en;

# interfaces
.implements Lcom/nextpeer/android/eb$ac;
.implements Lcom/nextpeer/android/ef$aa;
.implements Lcom/nextpeer/android/gt$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gm$aa;,
        Lcom/nextpeer/android/gm$ab;,
        Lcom/nextpeer/android/gm$ac;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/gm$aa;

.field private b:Z

.field private c:Z

.field private d:Lcom/nextpeer/android/gm$ab;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/nextpeer/android/fu;

.field private g:Lcom/nextpeer/android/dx;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/en;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->b:Z

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    iput-object v1, p0, Lcom/nextpeer/android/gm;->f:Lcom/nextpeer/android/fu;

    new-instance v0, Lcom/nextpeer/android/gn;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/gn;-><init>(Lcom/nextpeer/android/gm;)V

    iput-object v0, p0, Lcom/nextpeer/android/gm;->g:Lcom/nextpeer/android/dx;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/gm;Lcom/nextpeer/android/fu;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gm;->f:Lcom/nextpeer/android/fu;

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/gm;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gm;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/gm$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    return-object v0
.end method

.method static synthetic d(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/fu;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gm;->f:Lcom/nextpeer/android/fu;

    return-object v0
.end method

.method static synthetic e(Lcom/nextpeer/android/gm;)Lcom/nextpeer/android/fu;
    .locals 10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x1

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_change_name:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_change_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x2

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_change_avatar:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_change_avatar:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nextpeer/android/bb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x3

    sget v3, Lcom/nextpeer/android/R$string;->np__tournament_results_random_menu_action_play_with_friends:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_play_with_fb_friends_accept:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x4

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_report_to_support:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_report_to_support:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ad;->b()[Lcom/nextpeer/android/hl$ad$ac;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    new-instance v0, Lcom/nextpeer/android/fu;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nextpeer/android/fu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(Ljava/util/List;)V

    new-instance v2, Lcom/nextpeer/android/gq;

    invoke-direct {v2, p0, v1}, Lcom/nextpeer/android/gq;-><init>(Lcom/nextpeer/android/gm;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/fu$aa;)V

    return-object v0

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/nextpeer/android/hl$ad$ac;->f()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Lcom/nextpeer/android/fz;

    invoke-virtual {v4}, Lcom/nextpeer/android/hl$ad$ac;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nextpeer/android/R$drawable;->np__ic_transparent_overflow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4}, Lcom/nextpeer/android/hl$ad$ac;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/nextpeer/android/hl$ad$ac;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/nextpeer/android/fz;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v5, v4, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/nextpeer/android/gm;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->v()V

    return-void
.end method

.method static synthetic g(Lcom/nextpeer/android/gm;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    new-instance v0, Lcom/nextpeer/android/eb;

    invoke-direct {v0}, Lcom/nextpeer/android/eb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/eb;->a(Lcom/nextpeer/android/eb$ac;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIChangeAvatarDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/eb;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private u()Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nextpeer/android/gm;->b:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ad;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/Nextpeer;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/nextpeer/android/bb;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ad;->i()V

    iget-boolean v1, p0, Lcom/nextpeer/android/gm;->c:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    new-instance v1, Lcom/nextpeer/android/gt;

    invoke-direct {v1}, Lcom/nextpeer/android/gt;-><init>()V

    invoke-virtual {v1, p0}, Lcom/nextpeer/android/gt;->a(Lcom/nextpeer/android/gt$aa;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "NPUITryToPlayWithFBFriendsDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/nextpeer/android/gt;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ad;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ad;->g()V

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->v()V

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->b:Z

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 3

    iget-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    new-instance v0, Lcom/nextpeer/android/ef;

    invoke-direct {v0}, Lcom/nextpeer/android/ef;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ef;->a(Lcom/nextpeer/android/ef$aa;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPChangeNameDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ef;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private w()V
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v4, v0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v5, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v5}, Lcom/nextpeer/android/gm$ab;->getCount()I

    move-result v5

    if-lt v1, v5, :cond_1

    :goto_1
    if-eqz v2, :cond_3

    new-instance v2, Lcom/nextpeer/android/dp;

    iget-object v5, v3, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v5}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v3}, Lcom/nextpeer/android/hl$ab;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    iget-boolean v6, v6, Lcom/nextpeer/android/dp;->d:Z

    invoke-direct {v2, v5, v4, v3, v6}, Lcom/nextpeer/android/dp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcom/nextpeer/android/dq;

    iget v4, v0, Lcom/nextpeer/android/dq;->b:I

    iget-boolean v5, v0, Lcom/nextpeer/android/dq;->c:Z

    iget-boolean v6, v0, Lcom/nextpeer/android/dq;->d:Z

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/nextpeer/android/dq;-><init>(Lcom/nextpeer/android/dp;IZZ)V

    iget-object v2, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/gm$ab;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v0, v3, v1}, Lcom/nextpeer/android/gm$ab;->insert(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/gm$ab;->notifyDataSetChanged()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/gm$ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v5, v0, Lcom/nextpeer/android/dq;->a:Lcom/nextpeer/android/dp;

    invoke-virtual {v5}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChangeNameDialogOperationSucceed: ERROR - Could not find the current player id to refresh its name post update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gm;->g:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gm;->g:Lcom/nextpeer/android/dx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->w()V

    return-void
.end method

.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/gm$aa;

    iput-object p1, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fw;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/nextpeer/android/fw;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gm$aa;->r()V

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->x()V

    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->m()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->u()Z

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/nextpeer/android/R$string;->np__tournament_results_random_fb_log_in_failed_alert_error_description:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gm;->a(I)V

    goto :goto_0
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->w()V

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->u()Z

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_avatar_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_avatar_description:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nextpeer/android/gm;->a(III)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->f:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_RESULTS_RANDOM_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "Random - onNextpeerFragmentBackPressed"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    const-string v0, "NPA_TOURNAMENT_RESULTS_RANDOM_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->x()V

    return-void
.end method

.method protected final j()V
    .locals 1

    const-string v0, "Random - onNextpeerFragmentShouldClearResources"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->x()V

    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_name_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_name_description:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nextpeer/android/gm;->a(III)V

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->u()Z

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->u()Z

    return-void
.end method

.method protected final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/nextpeer/android/en;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/nextpeer/android/gm$ab;

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/nextpeer/android/gm$ab;-><init>(Lcom/nextpeer/android/gm;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gm;->g:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gm;->setRetainInstance(Z)V

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment_tournament_results_random:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_bar_button_replay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/nextpeer/android/go;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/go;-><init>(Lcom/nextpeer/android/gm;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_list_peers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nextpeer/android/gm;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/gm$ab;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/nextpeer/android/gm;->e:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nextpeer/android/gm;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dq;

    iget-object v3, p0, Lcom/nextpeer/android/gm;->d:Lcom/nextpeer/android/gm$ab;

    invoke-virtual {v3, v0}, Lcom/nextpeer/android/gm$ab;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_random_empty_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/nextpeer/android/gm;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final onPause()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gm;->g:Lcom/nextpeer/android/dx;

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerActivity;->makeSettingButtonGone()V

    :cond_0
    invoke-super {p0}, Lcom/nextpeer/android/en;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/en;->onResume()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    new-instance v1, Lcom/nextpeer/android/gp;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/gp;-><init>(Lcom/nextpeer/android/gm;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/NextpeerActivity;->makeSettingButtonVisible(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/gm;->u()Z

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/en;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_results_random_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__loading_indicator_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gm;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final r()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gm;->a:Lcom/nextpeer/android/gm$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gm$aa;->s()V

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->x()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 0

    invoke-virtual {p0}, Lcom/nextpeer/android/gm;->p()V

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gm;->c:Z

    invoke-direct {p0}, Lcom/nextpeer/android/gm;->u()Z

    return-void
.end method
