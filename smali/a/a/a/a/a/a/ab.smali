.class public La/a/a/a/a/a/ab;
.super Ljava/lang/Object;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private A:La/a/a/a/a/b/ab;

.field private a:I

.field private b:Ljava/util/Hashtable;

.field private volatile c:Ljava/util/Vector;

.field private volatile d:Ljava/util/Vector;

.field private e:La/a/a/a/a/a/af;

.field private f:La/a/a/a/a/a/aa;

.field private g:La/a/a/a/a/a/ac;

.field private h:J

.field private i:Z

.field private j:La/a/a/a/a/ah;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:J

.field private r:J

.field private s:J

.field private t:La/a/a/a/a/a/b/au;

.field private u:Z

.field private v:Z

.field private w:Ljava/util/Hashtable;

.field private x:Ljava/util/Hashtable;

.field private y:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(La/a/a/a/a/ah;La/a/a/a/a/a/af;La/a/a/a/a/a/ac;La/a/a/a/a/a/aa;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, La/a/a/a/a/a/ab;->a:I

    iput-object v1, p0, La/a/a/a/a/a/ab;->f:La/a/a/a/a/a/aa;

    iput-object v1, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    const/16 v0, 0xa

    iput v0, p0, La/a/a/a/a/a/ab;->k:I

    iput v2, p0, La/a/a/a/a/a/ab;->l:I

    iput v2, p0, La/a/a/a/a/a/ab;->m:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->o:Ljava/lang/Object;

    iput-boolean v2, p0, La/a/a/a/a/a/ab;->p:Z

    iput-wide v3, p0, La/a/a/a/a/a/ab;->q:J

    iput-wide v3, p0, La/a/a/a/a/a/ab;->r:J

    iput-wide v3, p0, La/a/a/a/a/a/ab;->s:J

    iput-boolean v2, p0, La/a/a/a/a/a/ab;->u:Z

    iput-boolean v2, p0, La/a/a/a/a/a/ab;->v:Z

    iput-object v1, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    iput-object v1, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    iput-object v1, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    invoke-virtual {p4}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    iget v1, p0, La/a/a/a/a/a/ab;->k:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    new-instance v0, La/a/a/a/a/a/b/ai;

    invoke-direct {v0}, La/a/a/a/a/a/b/ai;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->t:La/a/a/a/a/a/b/au;

    iput v2, p0, La/a/a/a/a/a/ab;->m:I

    iput v2, p0, La/a/a/a/a/a/ab;->l:I

    iput-object p1, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    iput-object p3, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    iput-object p2, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    iput-object p4, p0, La/a/a/a/a/a/ab;->f:La/a/a/a/a/a/aa;

    invoke-direct {p0}, La/a/a/a/a/a/ab;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;La/a/a/a/a/al;)La/a/a/a/a/a/b/au;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, La/a/a/a/a/a/b/au;->a(La/a/a/a/a/al;)La/a/a/a/a/a/b/au;
    :try_end_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v0, v1, v4

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v1}, La/a/a/a/a/ap;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-interface {v1, p1}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    throw v1
.end method

.method private static a(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 8

    const/4 v2, 0x0

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/au;

    invoke-virtual {v0}, La/a/a/a/a/a/b/au;->i()I

    move-result v0

    const v1, 0xffff

    sub-int/2addr v1, v5

    add-int/2addr v0, v1

    if-le v0, v4, :cond_1

    move v3, v2

    :cond_1
    move v0, v3

    :goto_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    :goto_3
    if-lt v2, v3, :cond_5

    move-object v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/au;

    invoke-virtual {v0}, La/a/a/a/a/a/b/au;->i()I

    move-result v6

    sub-int v0, v6, v5

    if-le v0, v4, :cond_3

    sub-int v4, v6, v5

    move v3, v1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v5, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Ljava/util/Vector;La/a/a/a/a/a/b/au;)V
    .locals 3

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/au;

    invoke-virtual {v0}, La/a/a/a/a/a/b/au;->i()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p2, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, p1, v2}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, La/a/a/a/a/a/b/ab;

    if-eqz v0, :cond_0

    instance-of v0, p1, La/a/a/a/a/a/b/am;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p2, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    aput-object v2, v0, v5

    iget-object v0, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v0, p2}, La/a/a/a/a/a/ac;->a(La/a/a/a/a/an;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p2, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v1}, La/a/a/a/a/a/ap;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    iget-object v0, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v0, p2}, La/a/a/a/a/a/ac;->a(La/a/a/a/a/an;)V

    :cond_1
    return-void
.end method

.method private static c(La/a/a/a/a/a/b/au;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/a/a/b/au;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(La/a/a/a/a/a/b/au;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sc-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/a/a/b/au;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(La/a/a/a/a/a/b/au;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/a/a/a/a/b/au;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-interface {v0}, La/a/a/a/a/ah;->c()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0}, La/a/a/a/a/a/af;->d()V

    return-void
.end method

.method private f()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-interface {v0}, La/a/a/a/a/ah;->b()Ljava/util/Enumeration;

    move-result-object v5

    iget v0, p0, La/a/a/a/a/a/ab;->a:I

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_7

    iput v3, p0, La/a/a/a/a/a/ab;->a:I

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-interface {v1, v0}, La/a/a/a/a/ah;->a(Ljava/lang/String;)La/a/a/a/a/al;

    move-result-object v1

    invoke-direct {p0, v0, v1}, La/a/a/a/a/a/ab;->a(Ljava/lang/String;La/a/a/a/a/al;)La/a/a/a/a/a/b/au;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v1, "r-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v0, v1, v8

    aput-object v2, v1, v9

    iget-object v0, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v2}, La/a/a/a/a/a/b/au;->i()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "s-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    check-cast v1, La/a/a/a/a/a/b/ao;

    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v3, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {v1}, La/a/a/a/a/a/ab;->d(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, La/a/a/a/a/ah;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {v1}, La/a/a/a/a/a/ab;->d(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, La/a/a/a/a/ah;->a(Ljava/lang/String;)La/a/a/a/a/al;

    move-result-object v3

    invoke-direct {p0, v0, v3}, La/a/a/a/a/a/ab;->a(Ljava/lang/String;La/a/a/a/a/al;)La/a/a/a/a/a/b/au;

    move-result-object v3

    check-cast v3, La/a/a/a/a/a/b/an;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, La/a/a/a/a/a/b/an;->l()V

    iget-object v7, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v7, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v8

    aput-object v2, v7, v9

    iget-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v3}, La/a/a/a/a/a/b/an;->i()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/a/b/ao;)La/a/a/a/a/aj;

    move-result-object v0

    iget-object v0, v0, La/a/a/a/a/aj;->a:La/a/a/a/a/a/ap;

    iget-object v2, p0, La/a/a/a/a/a/ab;->f:La/a/a/a/a/a/aa;

    invoke-virtual {v2}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v2

    invoke-virtual {v0, v2}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/ab;)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v2, v3, v9

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->l()V

    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v3

    invoke-virtual {v3}, La/a/a/a/a/ak;->d()I

    move-result v3

    if-ne v3, v10, :cond_5

    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v2, v3, v9

    iget-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v2, v3, v9

    iget-object v0, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v1, "sc-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v2, La/a/a/a/a/a/b/an;

    iget-object v1, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {v2}, La/a/a/a/a/a/ab;->c(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, La/a/a/a/a/ah;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    iget-object v2, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-interface {v2, v0}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private g()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Vector;

    iget v1, p0, La/a/a/a/a/a/ab;->k:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    iget-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-static {v0}, La/a/a/a/a/a/ab;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-static {v0}, La/a/a/a/a/a/ab;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, La/a/a/a/a/a/b/ao;

    if-eqz v3, :cond_2

    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    check-cast v0, La/a/a/a/a/a/b/ao;

    invoke-static {v2, v0}, La/a/a/a/a/a/ab;->a(Ljava/util/Vector;La/a/a/a/a/a/b/au;)V

    goto :goto_0

    :cond_2
    instance-of v3, v0, La/a/a/a/a/a/b/an;

    if-eqz v3, :cond_0

    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    check-cast v0, La/a/a/a/a/a/b/an;

    invoke-static {v2, v0}, La/a/a/a/a/a/ab;->a(Ljava/util/Vector;La/a/a/a/a/a/b/au;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/ao;

    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-static {v2, v0}, La/a/a/a/a/a/ab;->a(Ljava/util/Vector;La/a/a/a/a/a/b/au;)V

    goto :goto_1
.end method

.method private h()J
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, La/a/a/a/a/a/ab;->h:J

    iget-boolean v2, p0, La/a/a/a/a/a/ab;->v:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, La/a/a/a/a/a/ab;->h:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iget-boolean v2, p0, La/a/a/a/a/a/ab;->u:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, La/a/a/a/a/a/ab;->q:J

    sub-long v2, v0, v2

    iget-wide v4, p0, La/a/a/a/a/a/ab;->r:J

    sub-long/2addr v0, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget-wide v0, p0, La/a/a/a/a/a/ab;->h:J

    sub-long/2addr v0, v2

    :goto_0
    cmp-long v2, v0, v6

    if-gtz v2, :cond_0

    const-wide/16 v0, 0xa

    :cond_0
    return-wide v0

    :cond_1
    iget-wide v2, p0, La/a/a/a/a/a/ab;->h:J

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method private i()V
    .locals 5

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, La/a/a/a/a/a/ab;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/a/a/ab;->l:I

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, La/a/a/a/a/a/ab;->l:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    invoke-virtual {p0}, La/a/a/a/a/a/ab;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized j()I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p0, La/a/a/a/a/a/ab;->a:I

    const/4 v0, 0x0

    :cond_0
    iget v2, p0, La/a/a/a/a/a/ab;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/a/a/a/a/a/ab;->a:I

    iget v2, p0, La/a/a/a/a/a/ab;->a:I

    const v3, 0xffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    iput v2, p0, La/a/a/a/a/a/ab;->a:I

    :cond_1
    iget v2, p0, La/a/a/a/a/a/ab;->a:I

    if-ne v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x7d01

    invoke-static {v0}, La/a/a/a/a/a/ah;->a(I)La/a/a/a/a/ap;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, La/a/a/a/a/a/ab;->a:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, La/a/a/a/a/a/ab;->a:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, La/a/a/a/a/a/ab;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method


# virtual methods
.method protected final a()La/a/a/a/a/a/b/au;
    .locals 10

    const/4 v1, 0x0

    iget-object v3, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v3

    move-object v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    monitor-exit v3

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, La/a/a/a/a/a/ab;->l:I

    iget v4, p0, La/a/a/a/a/a/ab;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v4, :cond_4

    :cond_3
    :try_start_1
    invoke-direct {p0}, La/a/a/a/a/a/ab;->h()J

    move-result-wide v4

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v0, v6

    iget-object v0, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    invoke-direct {p0}, La/a/a/a/a/a/ab;->h()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    :try_start_2
    iget-boolean v0, p0, La/a/a/a/a/a/ab;->v:Z

    if-nez v0, :cond_6

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/au;

    instance-of v0, v0, La/a/a/a/a/a/b/ad;

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    monitor-exit v3

    move-object v0, v1

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, La/a/a/a/a/a/ab;->v:Z

    if-eqz v0, :cond_8

    iget-wide v4, p0, La/a/a/a/a/a/ab;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v0, p0, La/a/a/a/a/a/ab;->u:Z

    if-nez v0, :cond_a

    iget-wide v6, p0, La/a/a/a/a/a/ab;->q:J

    sub-long v6, v4, v6

    iget-wide v8, p0, La/a/a/a/a/a/ab;->h:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    iget-wide v6, p0, La/a/a/a/a/a/ab;->r:J

    sub-long v6, v4, v6

    iget-wide v8, p0, La/a/a/a/a/a/ab;->h:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_8

    :cond_7
    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, p0, La/a/a/a/a/a/ab;->h:J

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v0, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, p0, La/a/a/a/a/a/ab;->q:J

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v0, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, p0, La/a/a/a/a/a/ab;->r:J

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v0, v6

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ab;->u:Z

    iput-wide v4, p0, La/a/a/a/a/a/ab;->s:J

    new-instance v0, La/a/a/a/a/an;

    iget-object v4, p0, La/a/a/a/a/a/ab;->f:La/a/a/a/a/a/aa;

    invoke-virtual {v4}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v4

    invoke-interface {v4}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, La/a/a/a/a/an;-><init>(B)V

    iget-object v4, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    iget-object v5, p0, La/a/a/a/a/a/ab;->t:La/a/a/a/a/a/b/au;

    invoke-virtual {v4, v0, v5}, La/a/a/a/a/a/af;->a(La/a/a/a/a/an;La/a/a/a/a/a/b/au;)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    iget-object v4, p0, La/a/a/a/a/a/ab;->t:La/a/a/a/a/a/b/au;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_8
    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/au;

    iget-object v2, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElementAt(I)V

    instance-of v2, v0, La/a/a/a/a/a/b/an;

    if-eqz v2, :cond_9

    iget v2, p0, La/a/a/a/a/a/ab;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/a/a/a/a/a/ab;->m:I

    iget-object v2, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, La/a/a/a/a/a/ab;->m:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v4

    :cond_9
    invoke-virtual {p0}, La/a/a/a/a/a/ab;->b()Z

    move-object v2, v0

    goto/16 :goto_0

    :cond_a
    iget-wide v6, p0, La/a/a/a/a/a/ab;->s:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, La/a/a/a/a/a/ab;->h:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_8

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, La/a/a/a/a/a/ab;->h:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, La/a/a/a/a/a/ab;->q:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, La/a/a/a/a/a/ab;->r:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v0, 0x7d00

    invoke-static {v0}, La/a/a/a/a/a/ah;->a(I)La/a/a/a/a/ap;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_b
    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, La/a/a/a/a/a/ab;->l:I

    iget v4, p0, La/a/a/a/a/a/ab;->k:I

    if-ge v0, v4, :cond_c

    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/au;

    iget-object v2, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElementAt(I)V

    iget v2, p0, La/a/a/a/a/a/ab;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/a/a/a/a/a/ab;->l:I

    iget-object v2, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, La/a/a/a/a/a/ab;->l:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v4

    move-object v2, v0

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method public final a(La/a/a/a/a/ap;)Ljava/util/Vector;
    .locals 4

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    if-nez p1, :cond_0

    new-instance p1, La/a/a/a/a/ap;

    const/16 v0, 0x7d66

    invoke-direct {p1, v0}, La/a/a/a/a/ap;-><init>(I)V

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0}, La/a/a/a/a/a/af;->c()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v3}, La/a/a/a/a/a/ap;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v3}, La/a/a/a/a/a/ap;->c()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v3}, La/a/a/a/a/a/ap;->a()La/a/a/a/a/ap;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v3, p1}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/ap;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v3, v0, La/a/a/a/a/aj;

    if-nez v3, :cond_1

    iget-object v3, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0}, La/a/a/a/a/a/ap;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, La/a/a/a/a/a/af;->b(Ljava/lang/String;)La/a/a/a/a/an;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected final a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, La/a/a/a/a/a/ab;->h:J

    return-void
.end method

.method protected final a(La/a/a/a/a/a/b/ab;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a/a/a/ab;->r:J

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ab;->i()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    move-result-object v1

    instance-of v0, p1, La/a/a/a/a/a/b/am;

    if-eqz v0, :cond_0

    new-instance v0, La/a/a/a/a/a/b/an;

    check-cast p1, La/a/a/a/a/a/b/am;

    invoke-direct {v0, p1}, La/a/a/a/a/a/b/an;-><init>(La/a/a/a/a/a/b/am;)V

    invoke-virtual {p0, v0, v1}, La/a/a/a/a/a/ab;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    :goto_0
    invoke-virtual {p0}, La/a/a/a/a/a/ab;->b()Z

    return-void

    :cond_0
    instance-of v0, p1, La/a/a/a/a/a/b/ak;

    if-nez v0, :cond_1

    instance-of v0, p1, La/a/a/a/a/a/b/al;

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, v1}, La/a/a/a/a/a/ab;->b(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, La/a/a/a/a/a/b/aj;

    if-eqz v0, :cond_3

    iput-boolean v3, p0, La/a/a/a/a/a/ab;->u:Z

    invoke-direct {p0, p1, v1}, La/a/a/a/a/a/ab;->b(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/af;->b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    goto :goto_0

    :cond_3
    instance-of v0, p1, La/a/a/a/a/a/b/ac;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/b/ac;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ac;->i_()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v2, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/ab;->i:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, La/a/a/a/a/a/ab;->e()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, v1, p1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/an;La/a/a/a/a/a/b/au;)V

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a/ab;->m:I

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a/ab;->l:I

    invoke-direct {p0}, La/a/a/a/a/a/ab;->g()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/a/ab;->v:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, La/a/a/a/a/a/ab;->f:La/a/a/a/a/a/aa;

    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/b/ac;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/a/b/ac;)V

    invoke-direct {p0, p1, v1}, La/a/a/a/a/a/ab;->b(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/af;->b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    invoke-static {v0}, La/a/a/a/a/a/ah;->a(I)La/a/a/a/a/ap;

    move-result-object v0

    throw v0

    :cond_6
    invoke-direct {p0, p1, v1}, La/a/a/a/a/a/ab;->b(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    invoke-virtual {p1}, La/a/a/a/a/a/b/ab;->i()I

    move-result v0

    invoke-direct {p0, v0}, La/a/a/a/a/a/ab;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/af;->b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    goto :goto_0
.end method

.method protected final a(La/a/a/a/a/a/b/ao;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v4

    invoke-virtual {v4}, La/a/a/a/a/ak;->d()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/ak;->d()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {p1}, La/a/a/a/a/a/ab;->c(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/af;->b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    invoke-virtual {p0}, La/a/a/a/a/a/ab;->b()Z

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(La/a/a/a/a/a/b/au;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a/a/a/ab;->q:J

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    move-result-object v1

    iget-object v0, v1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0}, La/a/a/a/a/a/ap;->g()V

    instance-of v0, p1, La/a/a/a/a/a/b/ao;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/b/ao;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/ak;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, v3, v3}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/ap;)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v0, v1}, La/a/a/a/a/a/ac;->a(La/a/a/a/a/an;)V

    invoke-direct {p0}, La/a/a/a/a/a/ab;->i()V

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v0

    invoke-direct {p0, v0}, La/a/a/a/a/a/ab;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/af;->b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    invoke-virtual {p0}, La/a/a/a/a/a/ab;->b()Z

    :cond_0
    return-void
.end method

.method public final a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->n_()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, La/a/a/a/a/a/ab;->j()I

    move-result v1

    invoke-virtual {p1, v1}, La/a/a/a/a/a/b/au;->a(I)V

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p2, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v2

    invoke-virtual {v1, v2}, La/a/a/a/a/a/ap;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    instance-of v1, p1, La/a/a/a/a/a/b/ao;

    if-eqz v1, :cond_3

    iget-object v2, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget v1, p0, La/a/a/a/a/a/ab;->l:I

    iget v3, p0, La/a/a/a/a/a/ab;->k:I

    if-lt v1, v3, :cond_2

    iget-object v1, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, La/a/a/a/a/a/ab;->l:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v3

    new-instance v1, La/a/a/a/a/ap;

    const/16 v3, 0x7dca

    invoke-direct {v1, v3}, La/a/a/a/a/ap;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/b/ao;

    move-object v1, v0

    invoke-virtual {v1}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v1

    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1}, La/a/a/a/a/ak;->d()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1}, La/a/a/a/a/ak;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v1, p2, p1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/an;La/a/a/a/a/a/b/au;)V

    iget-object v1, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {p1}, La/a/a/a/a/a/ab;->c(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/b/ao;

    move-object v1, v0

    invoke-interface {v3, v4, v1}, La/a/a/a/a/ah;->a(Ljava/lang/String;La/a/a/a/a/al;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {p1}, La/a/a/a/a/a/ab;->c(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/b/ao;

    move-object v1, v0

    invoke-interface {v3, v4, v1}, La/a/a/a/a/ah;->a(Ljava/lang/String;La/a/a/a/a/al;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    instance-of v1, p1, La/a/a/a/a/a/b/ad;

    if-eqz v1, :cond_4

    iget-object v2, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v1, p2, p1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/an;La/a/a/a/a/a/b/au;)V

    iget-object v1, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4
    instance-of v1, p1, La/a/a/a/a/a/b/ai;

    if-eqz v1, :cond_7

    iput-object p1, p0, La/a/a/a/a/a/ab;->t:La/a/a/a/a/a/b/au;

    :cond_5
    :goto_3
    iget-object v2, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    instance-of v1, p1, La/a/a/a/a/a/b/ab;

    if-nez v1, :cond_6

    iget-object v1, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v1, p2, p1}, La/a/a/a/a/a/af;->a(La/a/a/a/a/an;La/a/a/a/a/a/b/au;)V

    :cond_6
    iget-object v1, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_7
    instance-of v1, p1, La/a/a/a/a/a/b/an;

    if-eqz v1, :cond_8

    iget-object v1, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {p1}, La/a/a/a/a/a/ab;->d(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    check-cast v1, La/a/a/a/a/a/b/an;

    invoke-interface {v2, v3, v1}, La/a/a/a/a/ah;->a(Ljava/lang/String;La/a/a/a/a/al;)V

    goto :goto_3

    :cond_8
    instance-of v1, p1, La/a/a/a/a/a/b/al;

    if-eqz v1, :cond_5

    iget-object v1, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {p1}, La/a/a/a/a/a/ab;->e(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(La/a/a/a/a/an;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0}, La/a/a/a/a/a/ap;->i()La/a/a/a/a/a/b/au;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v0, v1, La/a/a/a/a/a/b/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, La/a/a/a/a/a/b/au;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v5

    aput-object p1, v0, v6

    aput-object v1, v0, v7

    move-object v0, v1

    check-cast v0, La/a/a/a/a/a/b/ab;

    instance-of v2, v0, La/a/a/a/a/a/b/ak;

    if-eqz v2, :cond_2

    iget-object v2, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {v1}, La/a/a/a/a/a/ab;->c(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ab;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, La/a/a/a/a/a/ab;->i()V

    invoke-virtual {v1}, La/a/a/a/a/a/b/au;->i()I

    move-result v2

    invoke-direct {p0, v2}, La/a/a/a/a/a/ab;->a(I)V

    iget-object v2, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v2, v1}, La/a/a/a/a/a/af;->b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    iget-object v1, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ab;->i()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    :cond_0
    :goto_0
    invoke-virtual {p0}, La/a/a/a/a/a/ab;->b()Z

    :cond_1
    return-void

    :cond_2
    instance-of v2, v0, La/a/a/a/a/a/b/al;

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {v1}, La/a/a/a/a/a/ab;->c(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {v1}, La/a/a/a/a/a/ab;->d(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ab;->i()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, La/a/a/a/a/a/ab;->m:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/a/a/a/a/ab;->m:I

    invoke-direct {p0}, La/a/a/a/a/a/ab;->i()V

    invoke-virtual {v1}, La/a/a/a/a/a/b/au;->i()I

    move-result v2

    invoke-direct {p0, v2}, La/a/a/a/a/a/ab;->a(I)V

    iget-object v2, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v2, v1}, La/a/a/a/a/a/af;->b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;

    iget-object v1, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ab;->i()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v0, Ljava/lang/Integer;

    iget v2, p0, La/a/a/a/a/a/ab;->m:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v1, v6

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/a/ab;->i:Z

    return-void
.end method

.method public final b(J)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v2

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, La/a/a/a/a/a/ab;->p:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v0}, La/a/a/a/a/a/ac;->b()V

    invoke-virtual {p0}, La/a/a/a/a/a/ab;->c()V

    iget-object v1, p0, La/a/a/a/a/a/ab;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0}, La/a/a/a/a/a/af;->e()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v2}, La/a/a/a/a/a/ac;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, La/a/a/a/a/a/ab;->l:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, La/a/a/a/a/a/ab;->m:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    iget-object v0, p0, La/a/a/a/a/a/ab;->o:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ab;->p:Z

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a/ab;->l:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final b(La/a/a/a/a/a/b/ao;)V
    .locals 4

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {p1}, La/a/a/a/a/a/ab;->e(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, La/a/a/a/a/ah;->b(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final b(La/a/a/a/a/a/b/au;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/a/a/a/ab;->r:J

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-boolean v0, p0, La/a/a/a/a/a/ab;->p:Z

    if-nez v0, :cond_0

    instance-of v0, p1, La/a/a/a/a/a/b/ao;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, La/a/a/a/a/a/b/ao;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->h()La/a/a/a/a/ak;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/a/ak;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/ac;->a(La/a/a/a/a/a/b/ao;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    invoke-static {p1}, La/a/a/a/a/a/ab;->e(La/a/a/a/a/a/b/au;)Ljava/lang/String;

    move-result-object v2

    check-cast p1, La/a/a/a/a/a/b/ao;

    invoke-interface {v1, v2, p1}, La/a/a/a/a/ah;->a(Ljava/lang/String;La/a/a/a/a/al;)V

    iget-object v1, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, La/a/a/a/a/a/b/ao;->i()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, La/a/a/a/a/a/b/am;

    invoke-direct {v1, v0}, La/a/a/a/a/a/b/am;-><init>(La/a/a/a/a/a/b/ao;)V

    invoke-virtual {p0, v1, v4}, La/a/a/a/a/a/ab;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, La/a/a/a/a/a/b/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/b/ao;

    if-eqz v0, :cond_2

    iget-object v1, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/ac;->a(La/a/a/a/a/a/b/ao;)V

    goto :goto_0

    :cond_2
    new-instance v0, La/a/a/a/a/a/b/al;

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->i()I

    move-result v1

    invoke-direct {v0, v1}, La/a/a/a/a/a/b/al;-><init>(I)V

    invoke-virtual {p0, v0, v4}, La/a/a/a/a/a/ab;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(La/a/a/a/a/ap;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    iput-boolean v1, p0, La/a/a/a/a/a/ab;->v:Z

    :try_start_0
    iget-boolean v0, p0, La/a/a/a/a/a/ab;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, La/a/a/a/a/a/ab;->e()V

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/a/ab;->u:Z
    :try_end_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final b()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v2}, La/a/a/a/a/a/af;->e()I

    move-result v2

    iget-boolean v3, p0, La/a/a/a/a/a/ab;->p:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    iget-object v3, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v3}, La/a/a/a/a/a/ac;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p0, La/a/a/a/a/a/ab;->p:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, La/a/a/a/a/a/ab;->l:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v3, v0

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    const/4 v1, 0x3

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, La/a/a/a/a/a/ab;->m:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    const/4 v1, 0x4

    new-instance v4, Ljava/lang/Boolean;

    iget-object v5, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    invoke-virtual {v5}, La/a/a/a/a/a/ac;->c()Z

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v1

    const/4 v1, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    iget-object v1, p0, La/a/a/a/a/a/ab;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, La/a/a/a/a/a/ab;->o:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    iget-object v1, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ab;->A:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ab;->z:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/ab;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    invoke-virtual {v0}, La/a/a/a/a/a/af;->d()V

    iput-object v1, p0, La/a/a/a/a/a/ab;->b:Ljava/util/Hashtable;

    iput-object v1, p0, La/a/a/a/a/a/ab;->c:Ljava/util/Vector;

    iput-object v1, p0, La/a/a/a/a/a/ab;->d:Ljava/util/Vector;

    iput-object v1, p0, La/a/a/a/a/a/ab;->w:Ljava/util/Hashtable;

    iput-object v1, p0, La/a/a/a/a/a/ab;->x:Ljava/util/Hashtable;

    iput-object v1, p0, La/a/a/a/a/a/ab;->y:Ljava/util/Hashtable;

    iput-object v1, p0, La/a/a/a/a/a/ab;->e:La/a/a/a/a/a/af;

    iput-object v1, p0, La/a/a/a/a/a/ab;->g:La/a/a/a/a/a/ac;

    iput-object v1, p0, La/a/a/a/a/a/ab;->f:La/a/a/a/a/a/aa;

    iput-object v1, p0, La/a/a/a/a/a/ab;->j:La/a/a/a/a/ah;

    iput-object v1, p0, La/a/a/a/a/a/ab;->t:La/a/a/a/a/a/b/au;

    return-void
.end method
