.class public final Lcom/nextpeer/android/gg;
.super Lcom/nextpeer/android/ba;

# interfaces
.implements Lcom/nextpeer/android/eb$ac;
.implements Lcom/nextpeer/android/ef$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gg$aa;,
        Lcom/nextpeer/android/gg$ab;,
        Lcom/nextpeer/android/gg$ac;,
        Lcom/nextpeer/android/gg$ad;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/gg$aa;

.field private b:Z

.field private c:Z

.field private d:Lcom/nextpeer/android/gg$ab;

.field private e:Lcom/nextpeer/android/dn;

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/dq;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/nextpeer/android/fu;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/nextpeer/android/gg$ac;

.field private o:I

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/nextpeer/android/dx;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    iput-boolean v1, p0, Lcom/nextpeer/android/gg;->b:Z

    iput-boolean v1, p0, Lcom/nextpeer/android/gg;->c:Z

    iput-object v0, p0, Lcom/nextpeer/android/gg;->f:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/nextpeer/android/gg;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/nextpeer/android/gg;->i:Lcom/nextpeer/android/fu;

    new-instance v0, Lcom/nextpeer/android/gh;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/gh;-><init>(Lcom/nextpeer/android/gg;)V

    iput-object v0, p0, Lcom/nextpeer/android/gg;->r:Lcom/nextpeer/android/dx;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/gg;I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/gg;->o:I

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gg;Lcom/nextpeer/android/fu;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gg;->i:Lcom/nextpeer/android/fu;

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/gg;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->f:Ljava/util/Hashtable;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    invoke-virtual {v0}, Lcom/nextpeer/android/gg$ac;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    :cond_0
    new-instance v0, Lcom/nextpeer/android/gg$ac;

    iget v1, p0, Lcom/nextpeer/android/gg;->o:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/nextpeer/android/gg$ac;-><init>(Lcom/nextpeer/android/gg;J)V

    iput-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    iget-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    invoke-virtual {v0}, Lcom/nextpeer/android/gg$ac;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic c(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nextpeer/android/gg;->b:Z

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    new-instance v1, Lcom/nextpeer/android/gk;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/gk;-><init>(Lcom/nextpeer/android/gg;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/NextpeerActivity;->makeSettingButtonVisible(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/gg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/gg;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/nextpeer/android/gg;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/gg;->o:I

    return v0
.end method

.method static synthetic f(Lcom/nextpeer/android/gg;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/nextpeer/android/gg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->b()V

    return-void
.end method

.method static synthetic h(Lcom/nextpeer/android/gg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->c()V

    return-void
.end method

.method static synthetic i(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/nextpeer/android/gg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/gg$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    return-object v0
.end method

.method static synthetic n(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/dn;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    return-object v0
.end method

.method static synthetic o(Lcom/nextpeer/android/gg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->q()V

    return-void
.end method

.method static synthetic p(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/fu;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gg;->i:Lcom/nextpeer/android/fu;

    return-object v0
.end method

.method private p()V
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
    iget-object v5, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-virtual {v5}, Lcom/nextpeer/android/gg$ab;->getCount()I

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

    iget-object v2, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/gg$ab;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-virtual {v0, v3, v1}, Lcom/nextpeer/android/gg$ab;->insert(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/gg$ab;->notifyDataSetChanged()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/gg$ab;->getItem(I)Ljava/lang/Object;

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

.method static synthetic q(Lcom/nextpeer/android/gg;)Lcom/nextpeer/android/fu;
    .locals 10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x1

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_change_name:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_change_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x2

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_change_avatar:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_change_avatar:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nextpeer/android/gg;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nextpeer/android/gg;->o:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x3

    sget v3, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_menu_action_forfeit:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_play_with_fb_friends_cancel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/nextpeer/android/dy;

    const/4 v2, 0x4

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_report_to_support:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/gg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getResources()Landroid/content/res/Resources;

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
    if-lt v0, v3, :cond_2

    new-instance v0, Lcom/nextpeer/android/fu;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nextpeer/android/fu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(Ljava/util/List;)V

    new-instance v2, Lcom/nextpeer/android/gl;

    invoke-direct {v2, p0, v1}, Lcom/nextpeer/android/gl;-><init>(Lcom/nextpeer/android/gg;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/fu$aa;)V

    return-object v0

    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/nextpeer/android/hl$ad$ac;->f()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Lcom/nextpeer/android/fz;

    invoke-virtual {v4}, Lcom/nextpeer/android/hl$ad$ac;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getResources()Landroid/content/res/Resources;

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

    if-le v5, v4, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private q()V
    .locals 2

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gg;->r:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->r:Lcom/nextpeer/android/dx;

    return-void
.end method

.method static synthetic r(Lcom/nextpeer/android/gg;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    new-instance v0, Lcom/nextpeer/android/ef;

    invoke-direct {v0}, Lcom/nextpeer/android/ef;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ef;->a(Lcom/nextpeer/android/ef$aa;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPChangeNameDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ef;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/nextpeer/android/gg;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    new-instance v0, Lcom/nextpeer/android/eb;

    invoke-direct {v0}, Lcom/nextpeer/android/eb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/eb;->a(Lcom/nextpeer/android/eb$ac;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIChangeAvatarDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/eb;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/nextpeer/android/gg;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    if-eqz v0, :cond_0

    const-string v0, "NPA_TOURNAMENT_RESULTS_FRIENDS_FORFEIT"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    iget-object v1, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    invoke-interface {v0, v1}, Lcom/nextpeer/android/gg$aa;->b(Lcom/nextpeer/android/dn;)V

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->q()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->p()V

    return-void
.end method

.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/gg$aa;

    iput-object p1, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fw;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/nextpeer/android/fw;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gg$aa;->t()V

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->q()V

    :cond_0
    return-void
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->p()V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_avatar_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_avatar_description:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nextpeer/android/gg;->a(III)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->g:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_RESULTS_FRIENDS_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "Friends - onNextpeerFragmentBackPressed"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    const-string v0, "NPA_TOURNAMENT_RESULTS_FRIENDS_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->q()V

    return-void
.end method

.method protected final j()V
    .locals 1

    const-string v0, "Friends - onNextpeerFragmentShouldClearResources"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->q()V

    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_name_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_name_description:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nextpeer/android/gg;->a(III)V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->b:Z

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

    iput-object v0, p0, Lcom/nextpeer/android/gg;->a:Lcom/nextpeer/android/gg$aa;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v2, -0x3e7

    invoke-super {p0, p1}, Lcom/nextpeer/android/ba;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No arguments was given."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/nextpeer/android/bb;->c(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No given match id was found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/gg;->f:Ljava/util/Hashtable;

    new-instance v1, Lcom/nextpeer/android/gg$ab;

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v3, v4}, Lcom/nextpeer/android/gg$ab;-><init>(Lcom/nextpeer/android/gg;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    iget-object v3, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v3, v3, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    iput-object v3, p0, Lcom/nextpeer/android/gg;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/hl;->a(I)Lcom/nextpeer/android/dn;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gg;->r:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    iget-object v0, v0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/nextpeer/android/do$ab;

    invoke-direct {v1}, Lcom/nextpeer/android/do$ab;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    iget-object v0, v0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    iget v0, v0, Lcom/nextpeer/android/dn;->c:I

    iput v0, p0, Lcom/nextpeer/android/gg;->o:I

    iget v0, p0, Lcom/nextpeer/android/gg;->o:I

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->m()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/gg;->o:I

    :cond_3
    return-void

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/do;

    invoke-virtual {v0}, Lcom/nextpeer/android/do;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/nextpeer/android/do;->a()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :cond_5
    new-instance v5, Lcom/nextpeer/android/dq;

    invoke-direct {v5, v0, v1, v6, v6}, Lcom/nextpeer/android/dq;-><init>(Lcom/nextpeer/android/dp;IZZ)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-virtual {v0, v5}, Lcom/nextpeer/android/gg$ab;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lcom/nextpeer/android/gg;->setRetainInstance(Z)V

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment_tournament_results_friends:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_list_peers:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nextpeer/android/gg;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nextpeer/android/gg;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nextpeer/android/gg;->d:Lcom/nextpeer/android/gg$ab;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_active_bar_container:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->p:Landroid/view/View;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_past_bar_container:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    if-nez v0, :cond_0

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_empty_view:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gg;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :goto_0
    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    invoke-virtual {v0}, Lcom/nextpeer/android/dn;->b()Lcom/nextpeer/android/dn$aa;

    move-result-object v0

    sget-object v3, Lcom/nextpeer/android/dn$aa;->b:Lcom/nextpeer/android/dn$aa;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nextpeer/android/gg;->c:Z

    iget-boolean v0, p0, Lcom/nextpeer/android/gg;->c:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_time_left_days_text:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/gg;->j:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_time_left_hours_text:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/gg;->k:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_time_left_min_text:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/gg;->l:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_time_left_sec_text:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/gg;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nextpeer/android/gg;->j:Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_time_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->k:Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_time_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->l:Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_time_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->m:Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_time_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_active_bar_button_replay:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/nextpeer/android/gi;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/gi;-><init>(Lcom/nextpeer/android/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v3, v1, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    invoke-virtual {v1}, Lcom/nextpeer/android/dn;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/nextpeer/android/R$string;->np__tournament_results_replay_bar_button_play:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_3
    sget v1, Lcom/nextpeer/android/R$id;->tournament_results_friends_replay_button_foreground_text:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/nextpeer/android/gg;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->q:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/do;

    invoke-virtual {v1}, Lcom/nextpeer/android/do;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/nextpeer/android/do;->c()Z

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/nextpeer/android/R$string;->np__tournament_results_replay_bar_button_replay:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_results_friends_past_button_archive:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/nextpeer/android/gj;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/gj;-><init>(Lcom/nextpeer/android/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onDetach()V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->i:Lcom/nextpeer/android/fu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gg;->i:Lcom/nextpeer/android/fu;

    invoke-virtual {v0}, Lcom/nextpeer/android/fu;->b()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    invoke-virtual {v0}, Lcom/nextpeer/android/gg$ac;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gg;->n:Lcom/nextpeer/android/gg$ac;

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerActivity;->makeSettingButtonGone()V

    :cond_1
    invoke-super {p0}, Lcom/nextpeer/android/ba;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onResume()V

    iget-object v0, p0, Lcom/nextpeer/android/gg;->e:Lcom/nextpeer/android/dn;

    if-nez v0, :cond_1

    sget v0, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_match_not_found_dialog_text:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gg;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nextpeer/android/gg;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/gg;->o:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/gg;->b()V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nextpeer/android/gg;->c:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_active_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    invoke-direct {p0}, Lcom/nextpeer/android/gg;->c()V

    return-void

    :cond_0
    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_results_friends_past_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method
