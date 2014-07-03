.class public final Lcom/nextpeer/android/gu;
.super Lcom/nextpeer/android/en;

# interfaces
.implements Lcom/nextpeer/android/gx$af$aa;
.implements Lcom/nextpeer/android/hm$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gu$aa;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/gu$aa;

.field private b:Lcom/nextpeer/android/hg;

.field private c:Lcom/nextpeer/android/gx$af;

.field private d:Lcom/nextpeer/android/hm;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/en;-><init>()V

    iput-object v2, p0, Lcom/nextpeer/android/gu;->a:Lcom/nextpeer/android/gu$aa;

    sget-object v0, Lcom/nextpeer/android/hg;->a:Lcom/nextpeer/android/hg;

    iput-object v0, p0, Lcom/nextpeer/android/gu;->b:Lcom/nextpeer/android/hg;

    iput-object v2, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    iput-boolean v1, p0, Lcom/nextpeer/android/gu;->e:Z

    iput-boolean v1, p0, Lcom/nextpeer/android/gu;->f:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gu;->e:Z

    iget-object v0, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    invoke-virtual {v0}, Lcom/nextpeer/android/hm;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hc;->m()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->m()V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gu;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gu;->a:Lcom/nextpeer/android/gu$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gu;->a:Lcom/nextpeer/android/gu$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gu$aa;->y()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/gu;)Lcom/nextpeer/android/hg;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gu;->b:Lcom/nextpeer/android/hg;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/gu$aa;

    iput-object p1, p0, Lcom/nextpeer/android/gu;->a:Lcom/nextpeer/android/gu$aa;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/gx$af;)V
    .locals 1

    iget-object v0, p1, Lcom/nextpeer/android/gx$af;->a:Lcom/nextpeer/android/gx;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->dismiss()V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->a:Lcom/nextpeer/android/gu$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gu;->a:Lcom/nextpeer/android/gu$aa;

    invoke-interface {v0}, Lcom/nextpeer/android/gu$aa;->x()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nextpeer/android/gx$af;Lcom/nextpeer/android/gx$af$ab;)V
    .locals 2

    sget-object v0, Lcom/nextpeer/android/gx$af$ab;->b:Lcom/nextpeer/android/gx$af$ab;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->p()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPUIUserCustomizeFragment - onSocialSignIn social network does not supported "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nextpeer/android/gx$af$ab;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/nextpeer/android/gx$af$ac;->b:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {p1, p2, v0}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ab;Lcom/nextpeer/android/gx$af$ac;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gu;->e:Z

    new-instance v0, Lcom/nextpeer/android/hm;

    invoke-direct {v0}, Lcom/nextpeer/android/hm;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    iget-object v0, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/hm;->a(Lcom/nextpeer/android/hm$aa;)V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/hm;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gu;->f:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    sget-object v1, Lcom/nextpeer/android/gx$af$ab;->b:Lcom/nextpeer/android/gx$af$ab;

    sget-object v2, Lcom/nextpeer/android/gx$af$ac;->c:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ab;Lcom/nextpeer/android/gx$af$ac;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    sget-object v1, Lcom/nextpeer/android/gx$af$ab;->b:Lcom/nextpeer/android/gx$af$ab;

    sget-object v2, Lcom/nextpeer/android/gx$af$ac;->b:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ab;Lcom/nextpeer/android/gx$af$ac;)V

    goto :goto_0
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->m:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_USER_CUSTOMIZE_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final g_()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gu;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gu;->d:Lcom/nextpeer/android/hm;

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->m()V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    sget-object v1, Lcom/nextpeer/android/gx$af$ac;->a:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ac;)V

    return-void
.end method

.method final h()V
    .locals 3

    const-string v0, "NPA_USER_CUSTOMIZE_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nextpeer/android/gu;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gu;->f:Z

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->m()V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    sget-object v1, Lcom/nextpeer/android/gx$af$ab;->b:Lcom/nextpeer/android/gx$af$ab;

    sget-object v2, Lcom/nextpeer/android/gx$af$ac;->c:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ab;Lcom/nextpeer/android/gx$af$ac;)V

    :cond_0
    iget-boolean v0, p0, Lcom/nextpeer/android/gu;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nextpeer/android/gu;->a()V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    sget-object v1, Lcom/nextpeer/android/gx$af$ac;->c:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ac;)V

    :cond_1
    return-void
.end method

.method public final h_()V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/gu;->a()V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    sget-object v1, Lcom/nextpeer/android/gx$af$ac;->b:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ac;)V

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

    iput-object v0, p0, Lcom/nextpeer/android/gu;->a:Lcom/nextpeer/android/gu$aa;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/en;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gu;->setRetainInstance(Z)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bb;->b(Landroid/os/Bundle;)Lcom/nextpeer/android/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/gu;->b:Lcom/nextpeer/android/hg;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/en;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/gx$af;

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/nextpeer/android/gx$af;-><init>(Landroid/content/Context;Lcom/nextpeer/android/gx$af$aa;)V

    iput-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    new-instance v1, Lcom/nextpeer/android/gv;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/gv;-><init>(Lcom/nextpeer/android/gu;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$ae;)Lcom/nextpeer/android/gx$ab;

    iget-object v1, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    invoke-static {}, Lcom/nextpeer/android/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nextpeer/android/gx$af$ad;->c:Lcom/nextpeer/android/gx$af$ad;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ad;)Lcom/nextpeer/android/gx$af;

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    invoke-static {}, Lcom/nextpeer/android/hk;->c()Lcom/nextpeer/android/hg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/hg;)Lcom/nextpeer/android/gx$af;

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx$af;->a()Lcom/nextpeer/android/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->show()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/nextpeer/android/gx$af$ad;->a:Lcom/nextpeer/android/gx$af$ad;

    goto :goto_0
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/en;->onStop()V

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    iget-object v0, v0, Lcom/nextpeer/android/gx$af;->a:Lcom/nextpeer/android/gx;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->dismiss()V

    return-void
.end method

.method protected final q()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gu;->f:Z

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__loading_indicator_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gu;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final r()V
    .locals 3

    invoke-virtual {p0}, Lcom/nextpeer/android/gu;->m()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gu;->f:Z

    iget-object v0, p0, Lcom/nextpeer/android/gu;->c:Lcom/nextpeer/android/gx$af;

    sget-object v1, Lcom/nextpeer/android/gx$af$ab;->b:Lcom/nextpeer/android/gx$af$ab;

    sget-object v2, Lcom/nextpeer/android/gx$af$ac;->a:Lcom/nextpeer/android/gx$af$ac;

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/gx$af;->a(Lcom/nextpeer/android/gx$af$ab;Lcom/nextpeer/android/gx$af$ac;)V

    return-void
.end method
