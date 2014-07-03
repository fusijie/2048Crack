.class public final Lcom/nextpeer/android/eo;
.super Lcom/nextpeer/android/ba;

# interfaces
.implements Lcom/nextpeer/android/eb$ac;
.implements Lcom/nextpeer/android/ef$aa;
.implements Lcom/nextpeer/android/fr$aa;
.implements Lcom/nextpeer/android/hm$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/eo$aa;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field private f:Lcom/nextpeer/android/fu;

.field private g:Lcom/nextpeer/android/hq;

.field private h:Lcom/nextpeer/android/hm;

.field private i:Lcom/nextpeer/android/eo$aa;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    iput-object v1, p0, Lcom/nextpeer/android/eo;->f:Lcom/nextpeer/android/fu;

    iput-object v1, p0, Lcom/nextpeer/android/eo;->g:Lcom/nextpeer/android/hq;

    iput-object v1, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    iput-object v1, p0, Lcom/nextpeer/android/eo;->i:Lcom/nextpeer/android/eo$aa;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/eo$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/eo;->i:Lcom/nextpeer/android/eo$aa;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/eo;Lcom/nextpeer/android/fu;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/eo;->f:Lcom/nextpeer/android/fu;

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/fu;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/eo;->f:Lcom/nextpeer/android/fu;

    return-object v0
.end method

.method static synthetic c(Lcom/nextpeer/android/eo;)Lcom/nextpeer/android/fu;
    .locals 6

    new-instance v0, Lcom/nextpeer/android/fu;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nextpeer/android/fu;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/nextpeer/android/dy;

    const/4 v2, 0x1

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_change_name:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/eo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_change_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/dy;)V

    new-instance v1, Lcom/nextpeer/android/dy;

    const/4 v2, 0x2

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_change_avatar:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/eo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_change_avatar:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/dy;)V

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nextpeer/android/hc;->l()Lcom/nextpeer/android/hc$aa;

    move-result-object v1

    sget-object v2, Lcom/nextpeer/android/hc$aa;->b:Lcom/nextpeer/android/hc$aa;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/nextpeer/android/dy;

    const/4 v2, 0x3

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_fb_logout:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/eo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_play_with_fb_friends_cancel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/dy;)V

    :cond_0
    new-instance v1, Lcom/nextpeer/android/dy;

    const/4 v2, 0x4

    sget v3, Lcom/nextpeer/android/R$string;->np__menu_action_report_to_support:I

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/eo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_report_to_support:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nextpeer/android/dy;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/dy;)V

    new-instance v1, Lcom/nextpeer/android/eu;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/eu;-><init>(Lcom/nextpeer/android/eo;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/fu$aa;)V

    return-object v0
.end method

.method static synthetic d(Lcom/nextpeer/android/eo;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/eo;->p()V

    return-void
.end method

.method static synthetic e(Lcom/nextpeer/android/eo;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    new-instance v0, Lcom/nextpeer/android/eb;

    invoke-direct {v0}, Lcom/nextpeer/android/eb;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/eb;->a(Lcom/nextpeer/android/eb$ac;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIChangeAvatarDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/eb;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/nextpeer/android/eo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "NPUIQuestionAlertDialogFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/nextpeer/android/R$string;->np__dialog_alert_logout_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__dialog_alert_logout_description:I

    sget v2, Lcom/nextpeer/android/R$string;->np__dialog_alert_logout_positive_action:I

    sget v3, Lcom/nextpeer/android/R$string;->np__dialog_alert_negative:I

    invoke-static {v0, v1, v2, v3}, Lcom/nextpeer/android/fr;->a(IIII)Lcom/nextpeer/android/fr;

    move-result-object v0

    const v1, 0xbc78f

    iput v1, v0, Lcom/nextpeer/android/fr;->a:I

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/fr;->a(Lcom/nextpeer/android/fr$aa;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIQuestionAlertDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/fr;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/nextpeer/android/eo;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eo;->g:Lcom/nextpeer/android/hq;

    return-void
.end method

.method private p()V
    .locals 3

    iget-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    new-instance v0, Lcom/nextpeer/android/ef;

    invoke-direct {v0}, Lcom/nextpeer/android/ef;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ef;->a(Lcom/nextpeer/android/ef$aa;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPChangeNameDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ef;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 9

    const/16 v8, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eo;->a:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/eo;->b:Landroid/widget/ImageView;

    iget-object v1, v3, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v1}, Lcom/nextpeer/android/hl$ab;->b()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v0, v1, v4}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, v3, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nextpeer/android/eo;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v3, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v4, v0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    iget-object v0, v3, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-lez v1, :cond_6

    iget-object v0, p0, Lcom/nextpeer/android/eo;->d:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/eo;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, v3, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ad;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ad;->g()V

    invoke-direct {p0}, Lcom/nextpeer/android/eo;->p()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    invoke-virtual {v0}, Lcom/nextpeer/android/dn;->b()Lcom/nextpeer/android/dn$aa;

    move-result-object v6

    sget-object v7, Lcom/nextpeer/android/dn$aa;->b:Lcom/nextpeer/android/dn$aa;

    if-ne v6, v7, :cond_2

    iget-object v0, v0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/do;

    invoke-virtual {v0}, Lcom/nextpeer/android/do;->d()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/nextpeer/android/do;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/nextpeer/android/eo;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/nextpeer/android/eo;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    invoke-direct {p0}, Lcom/nextpeer/android/eo;->q()V

    return-void
.end method

.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/eo$aa;

    iput-object p1, p0, Lcom/nextpeer/android/eo;->i:Lcom/nextpeer/android/eo$aa;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fr;)V
    .locals 2

    iget v0, p1, Lcom/nextpeer/android/fr;->a:I

    const v1, 0xbc78f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__dialog_alert_logout_action:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/eo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/ev;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/ev;-><init>(Lcom/nextpeer/android/eo;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ho;->e(Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/eo;->g:Lcom/nextpeer/android/hq;

    :cond_0
    return-void
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    invoke-direct {p0}, Lcom/nextpeer/android/eo;->q()V

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_avatar_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_avatar_description:I

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/eo;->a(II)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->b:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_HOME_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final g_()V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->m()V

    invoke-direct {p0}, Lcom/nextpeer/android/eo;->q()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "NPA_HOME_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final h_()V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    return-void
.end method

.method public final k()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    sget v0, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_name_title:I

    sget v1, Lcom/nextpeer/android/R$string;->np__error_message_failed_to_change_name_description:I

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/eo;->a(II)V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    return-void
.end method

.method protected final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final o()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nextpeer/android/eo;->i:Lcom/nextpeer/android/eo$aa;

    iget-object v0, p0, Lcom/nextpeer/android/eo;->g:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/eo;->g:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    iput-object v1, p0, Lcom/nextpeer/android/eo;->g:Lcom/nextpeer/android/hq;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    invoke-virtual {v0}, Lcom/nextpeer/android/hm;->b()V

    iget-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm$aa;)V

    iput-object v1, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    sget v2, Lcom/nextpeer/android/R$layout;->np__fragment_home:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    sget v2, Lcom/nextpeer/android/R$id;->np__home_extra_buttons_container:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v3

    iget-object v3, v3, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    invoke-virtual {v3}, Lcom/nextpeer/android/hl$ad;->a()[Lcom/nextpeer/android/hl$ad$aa;

    move-result-object v10

    array-length v11, v10

    const/4 v3, 0x0

    move-object v6, v4

    move v7, v5

    move v5, v3

    :goto_0
    if-lt v5, v11, :cond_0

    sget v2, Lcom/nextpeer/android/R$id;->np__home_play_random_tournament_button:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/nextpeer/android/R$id;->np__home_play_with_fb_friends_tournament_button:I

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sget v4, Lcom/nextpeer/android/R$id;->np__home_your_current_matches_button:I

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sget v5, Lcom/nextpeer/android/R$id;->np__home_current_player_name:I

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nextpeer/android/eo;->a:Landroid/widget/TextView;

    sget v5, Lcom/nextpeer/android/R$id;->np__home_current_player_thumbnail:I

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nextpeer/android/eo;->b:Landroid/widget/ImageView;

    sget v5, Lcom/nextpeer/android/R$id;->np__home_your_current_matches_container:I

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nextpeer/android/eo;->c:Landroid/view/View;

    sget v5, Lcom/nextpeer/android/R$id;->np__home_your_current_matches_button_badge:I

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nextpeer/android/eo;->d:Landroid/widget/TextView;

    new-instance v5, Lcom/nextpeer/android/eq;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/nextpeer/android/eq;-><init>(Lcom/nextpeer/android/eo;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/nextpeer/android/er;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nextpeer/android/er;-><init>(Lcom/nextpeer/android/eo;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/nextpeer/android/es;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/nextpeer/android/es;-><init>(Lcom/nextpeer/android/eo;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/nextpeer/android/eo;->q()V

    return-object v9

    :cond_0
    aget-object v12, v10, v5

    sget v3, Lcom/nextpeer/android/R$layout;->np__home_server_url_button:I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/RelativeLayout;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/nextpeer/android/eo;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nextpeer/android/R$dimen;->np__home_content_padding:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    iget v14, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v15, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_1

    const/4 v7, 0x3

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getId()I

    move-result v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    sget v3, Lcom/nextpeer/android/R$id;->np__server_url_clickable_button:I

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v12}, Lcom/nextpeer/android/hl$ad$aa;->b()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v6, Lcom/nextpeer/android/ep;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Lcom/nextpeer/android/ep;-><init>(Lcom/nextpeer/android/eo;Lcom/nextpeer/android/hl$ad$aa;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lcom/nextpeer/android/R$id;->np__server_url_button_text:I

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/nextpeer/android/hl$ad$aa;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Lcom/nextpeer/android/hl$ad$aa;->a()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v6, v4

    move v7, v8

    goto/16 :goto_0
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onDetach()V

    iget-object v0, p0, Lcom/nextpeer/android/eo;->f:Lcom/nextpeer/android/fu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eo;->f:Lcom/nextpeer/android/fu;

    invoke-virtual {v0}, Lcom/nextpeer/android/fu;->b()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerActivity;->makeSettingButtonGone()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eo;->f:Lcom/nextpeer/android/fu;

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onResume()V

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    new-instance v1, Lcom/nextpeer/android/et;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/et;-><init>(Lcom/nextpeer/android/eo;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/NextpeerActivity;->makeSettingButtonVisible(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nextpeer/android/hl;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/nextpeer/android/R$string;->np__home_updating_user_profle:I

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/eo;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/eo;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/hm;

    invoke-direct {v0}, Lcom/nextpeer/android/hm;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/eo;->h:Lcom/nextpeer/android/hm;

    invoke-virtual {v0}, Lcom/nextpeer/android/hm;->a()V

    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/eo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__home_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/eo;->e:Z

    return-void
.end method
