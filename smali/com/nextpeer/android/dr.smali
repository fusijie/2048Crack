.class final Lcom/nextpeer/android/dr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/dr$aa;
    }
.end annotation


# static fields
.field private static a:Lcom/nextpeer/android/dr;


# instance fields
.field private volatile b:Lcom/nextpeer/android/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nextpeer/android/ar",
            "<",
            "Lcom/nextpeer/android/dx;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private volatile e:Z

.field private f:Lcom/nextpeer/android/dw;

.field private g:Lcom/nextpeer/android/hq;

.field private h:Lcom/nextpeer/android/dm;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lcom/nextpeer/android/cf;

.field private p:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/dp;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dq;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Ljava/lang/Integer;

.field private u:Ljava/util/Timer;

.field private v:Z

.field private final w:Lcom/nextpeer/android/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/dr;->a:Lcom/nextpeer/android/dr;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nextpeer/android/ar;

    invoke-direct {v0}, Lcom/nextpeer/android/ar;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/dr;->b:Lcom/nextpeer/android/ar;

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->c:Z

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->d:Z

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->e:Z

    sget-object v0, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    iput-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    iput-object v2, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    iput-object v2, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nextpeer/android/dr;->i:I

    iput v1, p0, Lcom/nextpeer/android/dr;->j:I

    iput v1, p0, Lcom/nextpeer/android/dr;->k:I

    iput v1, p0, Lcom/nextpeer/android/dr;->l:I

    iput-object v2, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/dr;->q:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/nextpeer/android/dr;->r:Ljava/util/ArrayList;

    iput v1, p0, Lcom/nextpeer/android/dr;->s:I

    iput-object v2, p0, Lcom/nextpeer/android/dr;->t:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->v:Z

    new-instance v0, Lcom/nextpeer/android/ds;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ds;-><init>(Lcom/nextpeer/android/dr;)V

    iput-object v0, p0, Lcom/nextpeer/android/dr;->w:Lcom/nextpeer/android/cj;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/cf;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    return-object v0
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dr;->e(Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/dr;->a:Lcom/nextpeer/android/dr;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/dr;

    invoke-direct {v0}, Lcom/nextpeer/android/dr;-><init>()V

    sput-object v0, Lcom/nextpeer/android/dr;->a:Lcom/nextpeer/android/dr;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/dr;->k:I

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;Lcom/nextpeer/android/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dr;->t:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dr;->r:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dr;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dr;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/dr;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dr;->s:I

    return v0
.end method

.method static synthetic b(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dr;->f(Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/nextpeer/android/dr;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/dr;->a:Lcom/nextpeer/android/dr;

    return-object v0
.end method

.method static synthetic b(Lcom/nextpeer/android/dr;I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/dr;->j:I

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/dr;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nextpeer/android/dr;->d:Z

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nextpeer/android/dr;->c:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Disconnecting from tabler..."

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "and connection"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    iput-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    iput-boolean v3, p0, Lcom/nextpeer/android/dr;->c:Z

    iput-object v2, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    iput-boolean v3, p0, Lcom/nextpeer/android/dr;->e:Z

    iput-object v2, p0, Lcom/nextpeer/android/dr;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/nextpeer/android/dr;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->a(Z)V

    iput-object v2, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    goto :goto_0

    :cond_2
    const-string v0, "without connection"

    goto :goto_1
.end method

.method static synthetic c(Lcom/nextpeer/android/dr;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dr;->i:I

    return v0
.end method

.method static synthetic c(Lcom/nextpeer/android/dr;Ljava/lang/String;)Lcom/nextpeer/android/dp;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dr;->e(Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dr;->f(Ljava/lang/String;)Lcom/nextpeer/android/dp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/nextpeer/android/dr;I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/dr;->l:I

    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dm;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    return-object v0
.end method

.method static synthetic d(Lcom/nextpeer/android/dr;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dr;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/a/a/ba;

    invoke-direct {v1}, Lcom/a/a/ba;-><init>()V

    invoke-static {p1}, Lcom/a/a/ba;->a(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lcom/a/a/ay;->c(Ljava/lang/String;)Lcom/a/a/ay;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v1, v2}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/av;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nextpeer/android/dr;->n:Ljava/lang/String;

    const-string v2, "port"

    invoke-virtual {v1, v2}, Lcom/a/a/ay;->b(Ljava/lang/String;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->e()I

    move-result v1

    iput v1, p0, Lcom/nextpeer/android/dr;->m:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TournamentSignIn parsed serviceAddress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nextpeer/android/dr;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nextpeer/android/dr;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/dr;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/dr;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/nextpeer/android/dr;->m:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "tryToParseTournamentSignInResponse failed to parse"

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryToParseTournamentSignInResponse failed to parse with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/ar;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->b:Lcom/nextpeer/android/ar;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/nextpeer/android/dp;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Lcom/nextpeer/android/dp;
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/dr;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method static synthetic f(Lcom/nextpeer/android/dr;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic g(Lcom/nextpeer/android/dr;)V
    .locals 6

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/nextpeer/android/dr;->u:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->u:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/dr;->u:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "tournament-status-request-timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nextpeer/android/dr;->u:Ljava/util/Timer;

    iget-object v0, p0, Lcom/nextpeer/android/dr;->u:Ljava/util/Timer;

    new-instance v1, Lcom/nextpeer/android/dv;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/dv;-><init>(Lcom/nextpeer/android/dr;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic h(Lcom/nextpeer/android/dr;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dr;->k:I

    return v0
.end method

.method static synthetic i(Lcom/nextpeer/android/dr;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dr;->j:I

    return v0
.end method

.method static synthetic j(Lcom/nextpeer/android/dr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/dr;->d:Z

    return v0
.end method

.method static synthetic k(Lcom/nextpeer/android/dr;)Lcom/nextpeer/android/dw;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    return-object v0
.end method

.method static synthetic l(Lcom/nextpeer/android/dr;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/nextpeer/android/dr;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/dr;->v:Z

    return-void
.end method

.method static synthetic n(Lcom/nextpeer/android/dr;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "didSignInFailed"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->c:Z

    iput-object v2, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->e:Z

    iput v1, p0, Lcom/nextpeer/android/dr;->s:I

    iput-object v2, p0, Lcom/nextpeer/android/dr;->t:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->v:Z

    iget-object v0, p0, Lcom/nextpeer/android/dr;->b:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->a()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->b:Lcom/nextpeer/android/ar;

    invoke-virtual {v0}, Lcom/nextpeer/android/ar;->b()V

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->b:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ar;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dx;

    invoke-virtual {v0}, Lcom/nextpeer/android/dx;->onTournamentFailedToSignIn()V

    move v0, v1

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/dr;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic o(Lcom/nextpeer/android/dr;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/dr;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    iput-boolean v8, p0, Lcom/nextpeer/android/dr;->e:Z

    iput-boolean v8, p0, Lcom/nextpeer/android/dr;->v:Z

    invoke-static {}, Lcom/nextpeer/android/au;->a()Lcom/nextpeer/android/au;

    move-result-object v1

    invoke-static {}, Lcom/nextpeer/android/hc;->a()Lcom/nextpeer/android/hc;

    move-result-object v6

    new-instance v0, Lcom/nextpeer/android/dr$aa;

    iget-object v2, p0, Lcom/nextpeer/android/dr;->n:Ljava/lang/String;

    iget v3, p0, Lcom/nextpeer/android/dr;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nextpeer/android/au;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/nextpeer/android/hc;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/nextpeer/android/hc;->k()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nextpeer/android/dr;->w:Lcom/nextpeer/android/cj;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/nextpeer/android/dr$aa;-><init>(Lcom/nextpeer/android/dr;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/cj;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr$aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/dr;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0}, Lcom/nextpeer/android/cf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/dr;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/nextpeer/android/dr;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->u:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->c(I)V

    goto :goto_0
.end method

.method public final a(Lcom/nextpeer/android/dm;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nextpeer/android/dr;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/nextpeer/android/dr;->b(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/dr;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/nextpeer/android/dr;->e:Z

    iget-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/nextpeer/android/dr;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    iput v1, p0, Lcom/nextpeer/android/dr;->s:I

    iput-object v3, p0, Lcom/nextpeer/android/dr;->t:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/nextpeer/android/dr;->v:Z

    sget-object v0, Lcom/nextpeer/android/dw;->a:Lcom/nextpeer/android/dw;

    iput-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    iput-object v3, p0, Lcom/nextpeer/android/dr;->r:Ljava/util/ArrayList;

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/dr;->i:I

    iget-object v2, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    new-instance v3, Lcom/nextpeer/android/dt;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/dt;-><init>(Lcom/nextpeer/android/dr;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nextpeer/android/ho;->a(ILcom/nextpeer/android/dm;Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    goto :goto_0
.end method

.method public final a(Lcom/nextpeer/android/dm;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connecting to match with id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nextpeer/android/dr;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/nextpeer/android/dr;->b(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/dr;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/nextpeer/android/dr;->e:Z

    iget-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/nextpeer/android/dr;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    iput p2, p0, Lcom/nextpeer/android/dr;->s:I

    iput-object v3, p0, Lcom/nextpeer/android/dr;->t:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/dr;->v:Z

    sget-object v0, Lcom/nextpeer/android/dw;->a:Lcom/nextpeer/android/dw;

    iput-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    iput-object v3, p0, Lcom/nextpeer/android/dr;->r:Ljava/util/ArrayList;

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/dr;->s:I

    new-instance v2, Lcom/nextpeer/android/du;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/du;-><init>(Lcom/nextpeer/android/dr;)V

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ho;->a(ILcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    goto :goto_0
.end method

.method public final a(Lcom/nextpeer/android/dx;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->b:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/cf;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "Disconnecting from room"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->a:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    iput-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    iget-object v0, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    :cond_0
    iput-object v2, p0, Lcom/nextpeer/android/dr;->g:Lcom/nextpeer/android/hq;

    iput-boolean v3, p0, Lcom/nextpeer/android/dr;->e:Z

    iput v3, p0, Lcom/nextpeer/android/dr;->s:I

    iput-object v2, p0, Lcom/nextpeer/android/dr;->t:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/nextpeer/android/dr;->r:Ljava/util/ArrayList;

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nextpeer/android/dr;->b(Z)V

    :cond_2
    return-void
.end method

.method public final a([B)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->a([B)V

    goto :goto_0
.end method

.method public final b(Lcom/nextpeer/android/dx;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->b:Lcom/nextpeer/android/ar;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/ar;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/cf;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final b([B)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->b([B)V

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    invoke-virtual {v1}, Lcom/nextpeer/android/dm;->d()I

    move-result v1

    sget-object v2, Lcom/nextpeer/android/dm$aa;->d:Lcom/nextpeer/android/dm$aa;

    invoke-virtual {v2}, Lcom/nextpeer/android/dm$aa;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->a(I)V

    iget-object v0, p0, Lcom/nextpeer/android/dr;->w:Lcom/nextpeer/android/cj;

    invoke-virtual {v0}, Lcom/nextpeer/android/cj;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Lcom/nextpeer/android/dm;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cf;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/cf;->c(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->p:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->f:Lcom/nextpeer/android/dw;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->r:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/dr;->v:Z

    iget v0, p0, Lcom/nextpeer/android/dr;->s:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->o:Lcom/nextpeer/android/cf;

    invoke-virtual {v0}, Lcom/nextpeer/android/cf;->d()V

    :cond_0
    return-void
.end method

.method public final h()I
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/dr;->o()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/dr;->h:Lcom/nextpeer/android/dm;

    invoke-virtual {v1}, Lcom/nextpeer/android/dm;->d()I

    move-result v1

    sget-object v2, Lcom/nextpeer/android/dm$aa;->d:Lcom/nextpeer/android/dm$aa;

    invoke-virtual {v2}, Lcom/nextpeer/android/dm$aa;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, Lcom/nextpeer/android/dr;->l:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nextpeer/android/dr;->k:I

    sub-int v1, v2, v1

    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->a:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dr;->s:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nextpeer/android/dr;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->a:Lcom/nextpeer/android/dw;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->b:Lcom/nextpeer/android/dw;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->c:Lcom/nextpeer/android/dw;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dr;->f:Lcom/nextpeer/android/dw;

    sget-object v1, Lcom/nextpeer/android/dw;->d:Lcom/nextpeer/android/dw;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final m()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dr;->t:Ljava/lang/Integer;

    return-object v0
.end method
