.class final Lcom/nextpeer/android/cf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/cf$aa;,
        Lcom/nextpeer/android/cf$ab;,
        Lcom/nextpeer/android/cf$ac;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/nextpeer/android/cd;

.field private volatile b:Lcom/nextpeer/android/dg;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:I

.field private k:Lcom/nextpeer/android/cj;

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/os/HandlerThread;

.field private s:Landroid/os/Handler;

.field private t:Lcom/nextpeer/android/cf$ac;

.field private u:Ljava/util/Timer;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/TimerTask;

.field private x:Lcom/nextpeer/android/cf$aa;

.field private y:Lcom/nextpeer/android/ce;

.field private z:Lcom/nextpeer/android/dj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/cj;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/nextpeer/android/cf;->a:Lcom/nextpeer/android/cd;

    iput-object v3, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    iput v2, p0, Lcom/nextpeer/android/cf;->c:I

    iput-boolean v2, p0, Lcom/nextpeer/android/cf;->d:Z

    iput-boolean v2, p0, Lcom/nextpeer/android/cf;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/cf;->f:Z

    iput-boolean v2, p0, Lcom/nextpeer/android/cf;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nextpeer/android/cf;->h:J

    iput v2, p0, Lcom/nextpeer/android/cf;->i:I

    iput v2, p0, Lcom/nextpeer/android/cf;->j:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/nextpeer/android/cf;->l:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/nextpeer/android/cf;->m:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/nextpeer/android/cf;->n:I

    iput v2, p0, Lcom/nextpeer/android/cf;->o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->q:Ljava/util/List;

    new-instance v0, Lcom/nextpeer/android/cf$ac;

    invoke-direct {v0, p0, v2}, Lcom/nextpeer/android/cf$ac;-><init>(Lcom/nextpeer/android/cf;B)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->t:Lcom/nextpeer/android/cf$ac;

    new-instance v0, Lcom/nextpeer/android/cg;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/cg;-><init>(Lcom/nextpeer/android/cf;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->w:Ljava/util/TimerTask;

    iput-object v3, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    new-instance v0, Lcom/nextpeer/android/ch;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ch;-><init>(Lcom/nextpeer/android/cf;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->y:Lcom/nextpeer/android/ce;

    new-instance v0, Lcom/nextpeer/android/ci;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ci;-><init>(Lcom/nextpeer/android/cf;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->z:Lcom/nextpeer/android/dj;

    iput-object p6, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    new-instance v0, Lcom/nextpeer/android/cd;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/nextpeer/android/cf;->y:Lcom/nextpeer/android/ce;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nextpeer/android/cd;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nextpeer/android/ce;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->a:Lcom/nextpeer/android/cd;

    new-instance v0, Lcom/nextpeer/android/dg;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/nextpeer/android/cf;->z:Lcom/nextpeer/android/dj;

    invoke-direct {v0, p1, v1, p4, v2}, Lcom/nextpeer/android/dg;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/nextpeer/android/dj;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    iget-object v0, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    invoke-virtual {v0}, Lcom/nextpeer/android/dg;->c()V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    iget-wide v1, v1, Lcom/nextpeer/android/hl$ad;->d:J

    iput-wide v1, p0, Lcom/nextpeer/android/cf;->l:J

    iget-object v1, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    iget v1, v1, Lcom/nextpeer/android/hl$ad;->b:I

    iput v1, p0, Lcom/nextpeer/android/cf;->m:I

    iget-object v1, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    iget v1, v1, Lcom/nextpeer/android/hl$ad;->c:I

    iput v1, p0, Lcom/nextpeer/android/cf;->n:I

    iget-object v0, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    iget v0, v0, Lcom/nextpeer/android/hl$ad;->e:I

    iput v0, p0, Lcom/nextpeer/android/cf;->o:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageSendingHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->r:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/nextpeer/android/cf;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nextpeer/android/cf;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/cf;->t:Lcom/nextpeer/android/cf$ac;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->s:Landroid/os/Handler;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "tabler-heartbeat-timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->u:Ljava/util/Timer;

    goto :goto_0
.end method

.method private a(ILjava/lang/Boolean;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/nextpeer/android/cf;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/cf;->c:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nextpeer/android/cf;->h:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/nextpeer/android/cf;->l:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget v0, p0, Lcom/nextpeer/android/cf;->i:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/nextpeer/android/cf;->i:I

    :cond_1
    iput p1, p0, Lcom/nextpeer/android/cf;->c:I

    iput p1, p0, Lcom/nextpeer/android/cf;->j:I

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lcom/nextpeer/android/cf;->h:J

    :cond_3
    iget v0, p0, Lcom/nextpeer/android/cf;->i:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/nextpeer/android/cf;->i:I

    if-le v0, p1, :cond_5

    iget v0, p0, Lcom/nextpeer/android/cf;->i:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/cf;->b(ILjava/lang/Boolean;)V

    iget v0, p0, Lcom/nextpeer/android/cf;->i:I

    iget v1, p0, Lcom/nextpeer/android/cf;->j:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/nextpeer/android/cf;->j:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/cf;->b(ILjava/lang/Boolean;)V

    :cond_4
    iput v6, p0, Lcom/nextpeer/android/cf;->j:I

    iput v6, p0, Lcom/nextpeer/android/cf;->i:I

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/cf;->b(ILjava/lang/Boolean;)V

    iput p1, p0, Lcom/nextpeer/android/cf;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/cf;->e:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cf$ab;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    invoke-virtual {v0}, Lcom/nextpeer/android/cf$aa;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nextpeer/android/cf$ab;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cf$aa;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method private a(Lcom/nextpeer/android/cm;IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/nextpeer/android/cf;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->what:I

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/cf;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/cf;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static a(ILjava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/cf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/cf;->g:Z

    return v0
.end method

.method private b(ILjava/lang/Boolean;)V
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Lcom/nextpeer/android/cz;

    invoke-direct {v2}, Lcom/nextpeer/android/cz;-><init>()V

    invoke-virtual {v2, p1}, Lcom/nextpeer/android/cz;->a(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/nextpeer/android/cz;->a(B)V

    invoke-direct {p0, v2, v1, v1}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nextpeer/android/cf;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/cf;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cm;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    invoke-virtual {v0}, Lcom/nextpeer/android/cf$aa;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/nextpeer/android/cf$ab;->a:Lcom/nextpeer/android/cf$ab;

    invoke-virtual {v1}, Lcom/nextpeer/android/cf$ab;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cf$aa;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nextpeer/android/cf;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cf;->u:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic c(Lcom/nextpeer/android/cf;Lcom/nextpeer/android/cm;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nextpeer/android/cm;->a()Lcom/nextpeer/android/cy;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/cy;->b:Lcom/nextpeer/android/cy;

    if-ne v0, v1, :cond_22

    check-cast p1, Lcom/nextpeer/android/cp;

    invoke-virtual {p1}, Lcom/nextpeer/android/cp;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/nextpeer/android/cp;->c()Ljava/util/Map;

    move-result-object v4

    sget-object v1, Lcom/nextpeer/android/ck;->A:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nextpeer/android/ck;->z:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz v4, :cond_0

    const-string v0, "userId"

    invoke-static {v4, v0}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "publicHost"

    invoke-static {v4, v1}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "internalHost"

    invoke-static {v4, v2}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "internalPort"

    invoke-static {v4, v3}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    const-string v5, "publicPort"

    invoke-static {v4, v5}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lcom/nextpeer/android/da;->a(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/Number;)Lcom/nextpeer/android/da;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got udp addr update for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    invoke-virtual {v2, v0, v1}, Lcom/nextpeer/android/dg;->a(Ljava/lang/String;Lcom/nextpeer/android/da;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/nextpeer/android/ck;->a:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string v0, "time"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "time"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_1
    const-string v0, "seed"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "seed"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/cj;->a(II)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/nextpeer/android/ck;->f:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_5

    const-string v0, "time"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "time"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/cj;->a(I)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/nextpeer/android/ck;->y:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {v0, v4}, Lcom/nextpeer/android/cj;->d(Ljava/util/Map;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/nextpeer/android/ck;->t:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {v0, v4}, Lcom/nextpeer/android/cj;->e(Ljava/util/Map;)V

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/nextpeer/android/ck;->v:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {v0}, Lcom/nextpeer/android/cj;->d()V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/nextpeer/android/ck;->g:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nextpeer/android/ck;->h:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_a

    const-string v0, "limit"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "limit"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_9
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/nextpeer/android/ck;->i:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_d

    const-string v0, "userId"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "userId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "finalScore"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "finalScore"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_c
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/nextpeer/android/ck;->j:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_15

    const-string v0, "currency"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "currency"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_e
    const-string v0, "xp"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "xp"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_f
    :goto_2
    const-string v0, "potSize"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "potSize"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_10
    const/4 v0, 0x0

    const-string v1, "matchData"

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v0, "matchData"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "scores"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "scores"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {v0, v5, v6, v3}, Lcom/nextpeer/android/cj;->a(Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto :goto_2

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const-string v7, "score"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "score"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_15
    sget-object v1, Lcom/nextpeer/android/ck;->l:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nextpeer/android/ck;->m:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_19

    const-string v0, "text"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "text"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v0, "title"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "title"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v0, "type"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "type"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_18
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    goto/16 :goto_0

    :cond_19
    sget-object v1, Lcom/nextpeer/android/ck;->p:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_1c

    const-string v0, "event"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "event"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_1a
    const-string v0, "data"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "data"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    goto/16 :goto_0

    :cond_1c
    sget-object v1, Lcom/nextpeer/android/ck;->r:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_1f

    const-string v0, "userId"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "userId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v0, "status"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "status"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_1e
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    goto/16 :goto_0

    :cond_1f
    sget-object v1, Lcom/nextpeer/android/ck;->s:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "sign"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "sign"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_20
    const-string v0, "delta"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "delta"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_21
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    goto/16 :goto_0

    :cond_22
    sget-object v1, Lcom/nextpeer/android/cy;->c:Lcom/nextpeer/android/cy;

    if-ne v0, v1, :cond_23

    check-cast p1, Lcom/nextpeer/android/cw;

    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {p1}, Lcom/nextpeer/android/cw;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cj;->c(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_23
    sget-object v1, Lcom/nextpeer/android/cy;->d:Lcom/nextpeer/android/cy;

    if-ne v0, v1, :cond_25

    check-cast p1, Lcom/nextpeer/android/cv;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nextpeer/android/cv;->c()I

    move-result v0

    sget-object v1, Lcom/nextpeer/android/df;->a:Lcom/nextpeer/android/df;

    invoke-virtual {v1}, Lcom/nextpeer/android/df;->a()I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {p1}, Lcom/nextpeer/android/cv;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cj;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_24
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {p1}, Lcom/nextpeer/android/cv;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cj;->b(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    invoke-virtual {p1}, Lcom/nextpeer/android/cv;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dg;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    sget-object v1, Lcom/nextpeer/android/cy;->e:Lcom/nextpeer/android/cy;

    if-ne v0, v1, :cond_28

    check-cast p1, Lcom/nextpeer/android/ct;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->b()I

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->d()I

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->c()I

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->f()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->g()Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cj;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/cf;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nextpeer/android/ct;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    invoke-virtual {v0}, Lcom/nextpeer/android/dg;->a()V

    goto/16 :goto_0

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->e()Lcom/nextpeer/android/da;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->e()Lcom/nextpeer/android/da;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/nextpeer/android/dg;->a(Ljava/lang/String;Lcom/nextpeer/android/da;)V

    goto :goto_5

    :cond_28
    sget-object v1, Lcom/nextpeer/android/cy;->h:Lcom/nextpeer/android/cy;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/nextpeer/android/cf;->d:Z

    if-nez v0, :cond_29

    iget v0, p0, Lcom/nextpeer/android/cf;->c:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/cf;->a(ILjava/lang/Boolean;)V

    iput-boolean v3, p0, Lcom/nextpeer/android/cf;->d:Z

    :cond_29
    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    invoke-virtual {v0}, Lcom/nextpeer/android/cj;->b()V

    goto/16 :goto_0

    :cond_2a
    move-object v3, v0

    goto/16 :goto_3

    :cond_2b
    move v1, v2

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/nextpeer/android/cf;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cf;->w:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic e(Lcom/nextpeer/android/cf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cf;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nextpeer/android/cf;)Lcom/nextpeer/android/cj;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cf;->k:Lcom/nextpeer/android/cj;

    return-object v0
.end method

.method static synthetic g(Lcom/nextpeer/android/cf;)Lcom/nextpeer/android/cd;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cf;->a:Lcom/nextpeer/android/cd;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nextpeer/android/cf;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/nextpeer/android/cf;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/cf;->g:Z

    iget-object v0, p0, Lcom/nextpeer/android/cf;->a:Lcom/nextpeer/android/cd;

    invoke-virtual {v0}, Lcom/nextpeer/android/cd;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "finalScore"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nextpeer/android/cp;

    invoke-direct {v1}, Lcom/nextpeer/android/cp;-><init>()V

    sget-object v2, Lcom/nextpeer/android/ck;->k:Lcom/nextpeer/android/ck;

    invoke-virtual {v2}, Lcom/nextpeer/android/ck;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/cp;->a(I)V

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cp;->a(Ljava/util/Map;)V

    invoke-direct {p0, v1, v3, v3}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cu;

    invoke-direct {v0}, Lcom/nextpeer/android/cu;-><init>()V

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cu;->a(I)V

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/cu;->b(I)V

    invoke-virtual {v0, p3}, Lcom/nextpeer/android/cu;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    iput-boolean v2, p0, Lcom/nextpeer/android/cf;->d:Z

    iput-boolean v2, p0, Lcom/nextpeer/android/cf;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nextpeer/android/cf;->h:J

    iput v2, p0, Lcom/nextpeer/android/cf;->i:I

    iput v2, p0, Lcom/nextpeer/android/cf;->j:I

    iget-object v0, p0, Lcom/nextpeer/android/cf;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cs;

    sget-object v1, Lcom/nextpeer/android/cs$aa;->c:Lcom/nextpeer/android/cs$aa;

    invoke-direct {v0, p1, v1, v2}, Lcom/nextpeer/android/cs;-><init>(Ljava/lang/String;Lcom/nextpeer/android/cs$aa;I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/nextpeer/android/cs;

    invoke-direct {v0, p1, p2}, Lcom/nextpeer/android/cs;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, v1, v1}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/nextpeer/android/co;

    invoke-direct {v0}, Lcom/nextpeer/android/co;-><init>()V

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/co;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/co;->a(I)V

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/co;->c(I)V

    invoke-virtual {v0, p4}, Lcom/nextpeer/android/co;->b(I)V

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/co;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/nextpeer/android/co;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nextpeer/android/cf;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/nextpeer/android/cf;->g:Z

    if-eqz p1, :cond_2

    new-instance v0, Lcom/nextpeer/android/cp;

    invoke-direct {v0}, Lcom/nextpeer/android/cp;-><init>()V

    sget-object v1, Lcom/nextpeer/android/ck;->b:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cp;->a(I)V

    sget-object v1, Lcom/nextpeer/android/ck;->b:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/cf;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/cf;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/nextpeer/android/cf;->u:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/nextpeer/android/cf;->a:Lcom/nextpeer/android/cd;

    invoke-virtual {v0}, Lcom/nextpeer/android/cd;->b()V

    iget-object v0, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    invoke-virtual {v0}, Lcom/nextpeer/android/dg;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/cf;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([B)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/nextpeer/android/cf;->n:I

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NP[TablerController] Discarding packet due to oversize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    const-string v0, "Nextpeer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pushDataToOtherPlayers will discard data packet! Size is too big "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nextpeer/android/cf;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nextpeer/android/cf;->m:I

    iget-object v1, p0, Lcom/nextpeer/android/cf;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nextpeer/android/cf;->a(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "NP[TablerController] Discarding packet due to flow overflow!"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    const-string v0, "Nextpeer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pushDataToOtherPlayers will discard data packet! Packets sent too fast, limit is ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nextpeer/android/cf;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sec]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/nextpeer/android/cw;

    invoke-direct {v0}, Lcom/nextpeer/android/cw;-><init>()V

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cw;->a([B)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cp;

    invoke-direct {v0}, Lcom/nextpeer/android/cp;-><init>()V

    sget-object v1, Lcom/nextpeer/android/ck;->x:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cp;->a(I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cr;

    invoke-direct {v0}, Lcom/nextpeer/android/cr;-><init>()V

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/cr;->a(I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    iput-boolean v2, p0, Lcom/nextpeer/android/cf;->d:Z

    iput-boolean v2, p0, Lcom/nextpeer/android/cf;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nextpeer/android/cf;->h:J

    iput v2, p0, Lcom/nextpeer/android/cf;->i:I

    iput v2, p0, Lcom/nextpeer/android/cf;->j:I

    iget-object v0, p0, Lcom/nextpeer/android/cf;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cs;

    sget-object v1, Lcom/nextpeer/android/cs$aa;->a:Lcom/nextpeer/android/cs$aa;

    invoke-direct {v0, p1, v1, v2}, Lcom/nextpeer/android/cs;-><init>(Ljava/lang/String;Lcom/nextpeer/android/cs$aa;I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cs;

    sget-object v1, Lcom/nextpeer/android/cs$aa;->d:Lcom/nextpeer/android/cs$aa;

    invoke-direct {v0, p1, v1, p2}, Lcom/nextpeer/android/cs;-><init>(Ljava/lang/String;Lcom/nextpeer/android/cs$aa;I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final b([B)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nextpeer/android/cf;->o:I

    iget-object v1, p0, Lcom/nextpeer/android/cf;->q:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nextpeer/android/cf;->a(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NP[TablerController] Discarding packet due to flow overflow!"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    const-string v0, "Nextpeer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pushUnreliableTournamentDataToOtherPlayers will discard data packet! Packets sent too fast, limit is ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nextpeer/android/cf;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sec]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/cf;->b:Lcom/nextpeer/android/dg;

    iget-object v1, p0, Lcom/nextpeer/android/cf;->v:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/nextpeer/android/dg;->a([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/cf;->a(ILjava/lang/Boolean;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cs;

    sget-object v1, Lcom/nextpeer/android/cs$aa;->b:Lcom/nextpeer/android/cs$aa;

    invoke-direct {v0, p1, v1, v2}, Lcom/nextpeer/android/cs;-><init>(Ljava/lang/String;Lcom/nextpeer/android/cs$aa;I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cs;

    sget-object v1, Lcom/nextpeer/android/cs$aa;->e:Lcom/nextpeer/android/cs$aa;

    invoke-direct {v0, p1, v1, p2}, Lcom/nextpeer/android/cs;-><init>(Ljava/lang/String;Lcom/nextpeer/android/cs$aa;I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/cf;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/cp;

    invoke-direct {v0}, Lcom/nextpeer/android/cp;-><init>()V

    sget-object v1, Lcom/nextpeer/android/ck;->w:Lcom/nextpeer/android/ck;

    invoke-virtual {v1}, Lcom/nextpeer/android/ck;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cp;->a(I)V

    invoke-direct {p0, v0, v2, v2}, Lcom/nextpeer/android/cf;->a(Lcom/nextpeer/android/cm;IZ)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/cf$aa;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/cf$aa;-><init>(Lcom/nextpeer/android/cf;)V

    iput-object v0, p0, Lcom/nextpeer/android/cf;->x:Lcom/nextpeer/android/cf$aa;

    :cond_0
    return-void
.end method
