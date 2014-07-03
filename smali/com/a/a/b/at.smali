.class public final Lcom/a/a/b/at;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/at$aa;,
        Lcom/a/a/b/at$ab;,
        Lcom/a/a/b/at$ac;,
        Lcom/a/a/b/at$ad;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic f:Z

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field b:Lcom/a/a/b/at$ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field final e:Lcom/a/a/b/at$ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private h:Lcom/a/a/b/at$aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/at",
            "<TK;TV;>.aa;"
        }
    .end annotation
.end field

.field private i:Lcom/a/a/b/at$ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/at",
            "<TK;TV;>.ab;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/a/b/at;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/a/a/b/at;->f:Z

    new-instance v0, Lcom/a/a/b/au;

    invoke-direct {v0}, Lcom/a/a/b/au;-><init>()V

    sput-object v0, Lcom/a/a/b/at;->g:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/a/a/b/at;->g:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/a/a/b/at;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lcom/a/a/b/at;->c:I

    iput v0, p0, Lcom/a/a/b/at;->d:I

    new-instance v0, Lcom/a/a/b/at$ad;

    invoke-direct {v0}, Lcom/a/a/b/at$ad;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/at;->e:Lcom/a/a/b/at$ad;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/a/a/b/at;->a:Ljava/util/Comparator;

    return-void

    :cond_0
    sget-object p1, Lcom/a/a/b/at;->g:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Z)Lcom/a/a/b/at$ad;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/a/a/b/at;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/a/a/b/at;->b:Lcom/a/a/b/at$ad;

    const/4 v0, 0x0

    if-eqz v2, :cond_9

    sget-object v0, Lcom/a/a/b/at;->g:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v2, Lcom/a/a/b/at$ad;->f:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_1
    if-nez v3, :cond_3

    move-object v1, v2

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/a/a/b/at$ad;->f:Ljava/lang/Object;

    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    :cond_3
    if-gez v3, :cond_4

    iget-object v4, v2, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    :goto_3
    if-eqz v4, :cond_5

    move-object v2, v4

    goto :goto_0

    :cond_4
    iget-object v4, v2, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    goto :goto_3

    :cond_5
    move v6, v3

    move-object v3, v2

    move v2, v6

    :goto_4
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/a/a/b/at;->e:Lcom/a/a/b/at$ad;

    if-nez v3, :cond_7

    sget-object v0, Lcom/a/a/b/at;->g:Ljava/util/Comparator;

    if-ne v5, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/a/a/b/at$ad;

    iget-object v2, v1, Lcom/a/a/b/at$ad;->e:Lcom/a/a/b/at$ad;

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/a/a/b/at$ad;-><init>(Lcom/a/a/b/at$ad;Ljava/lang/Object;Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    iput-object v0, p0, Lcom/a/a/b/at;->b:Lcom/a/a/b/at$ad;

    :goto_5
    iget v1, p0, Lcom/a/a/b/at;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/at;->c:I

    iget v1, p0, Lcom/a/a/b/at;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/at;->d:I

    move-object v1, v0

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/a/a/b/at$ad;

    iget-object v4, v1, Lcom/a/a/b/at$ad;->e:Lcom/a/a/b/at$ad;

    invoke-direct {v0, v3, p1, v1, v4}, Lcom/a/a/b/at$ad;-><init>(Lcom/a/a/b/at$ad;Ljava/lang/Object;Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    if-gez v2, :cond_8

    iput-object v0, v3, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    :goto_6
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/a/a/b/at;->b(Lcom/a/a/b/at$ad;Z)V

    goto :goto_5

    :cond_8
    iput-object v0, v3, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    goto :goto_6

    :cond_9
    move-object v3, v2

    move v2, v0

    goto :goto_4
.end method

.method private a(Lcom/a/a/b/at$ad;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v3, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    iget-object v4, v3, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v5, v3, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    iput-object v4, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    if-eqz v4, :cond_0

    iput-object p1, v4, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    iput-object p1, v3, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iput-object v3, p1, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/a/a/b/at$ad;->h:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/a/a/b/at$ad;->h:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/a/a/b/at$ad;->h:I

    iget v0, p1, Lcom/a/a/b/at$ad;->h:I

    if-eqz v5, :cond_1

    iget v1, v5, Lcom/a/a/b/at$ad;->h:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/at$ad;->h:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/a/a/b/at;->f:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iput-object p2, v0, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcom/a/a/b/at;->b:Lcom/a/a/b/at$ad;

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Lcom/a/a/b/at$ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/a/a/b/at;->a(Ljava/lang/Object;Z)Lcom/a/a/b/at$ad;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/a/a/b/at$ad;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v0, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    iget-object v4, v3, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v5, v3, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    iput-object v5, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    if-eqz v5, :cond_0

    iput-object p1, v5, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    iput-object p1, v3, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    iput-object v3, p1, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/a/a/b/at$ad;->h:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lcom/a/a/b/at$ad;->h:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/a/a/b/at$ad;->h:I

    iget v0, p1, Lcom/a/a/b/at$ad;->h:I

    if-eqz v4, :cond_1

    iget v1, v4, Lcom/a/a/b/at$ad;->h:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/a/a/b/at$ad;->h:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Lcom/a/a/b/at$ad;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v4, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    if-eqz v3, :cond_4

    iget v0, v3, Lcom/a/a/b/at$ad;->h:I

    move v2, v0

    :goto_2
    if-eqz v4, :cond_5

    iget v0, v4, Lcom/a/a/b/at$ad;->h:I

    :goto_3
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_a

    iget-object v3, v4, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v0, v4, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/a/a/b/at$ad;->h:I

    move v2, v0

    :goto_4
    if-eqz v3, :cond_7

    iget v0, v3, Lcom/a/a/b/at$ad;->h:I

    :goto_5
    sub-int/2addr v0, v2

    if-eq v0, v7, :cond_2

    if-nez v0, :cond_8

    if-nez p2, :cond_8

    :cond_2
    invoke-direct {p0, p1}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;)V

    :goto_6
    if-nez p2, :cond_0

    :cond_3
    :goto_7
    iget-object p1, p1, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    sget-boolean v2, Lcom/a/a/b/at;->f:Z

    if-nez v2, :cond_9

    if-eq v0, v8, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    invoke-direct {p0, v4}, Lcom/a/a/b/at;->b(Lcom/a/a/b/at$ad;)V

    invoke-direct {p0, p1}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;)V

    goto :goto_6

    :cond_a
    const/4 v4, 0x2

    if-ne v5, v4, :cond_10

    iget-object v4, v3, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v0, v3, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/a/a/b/at$ad;->h:I

    move v2, v0

    :goto_8
    if-eqz v4, :cond_d

    iget v0, v4, Lcom/a/a/b/at$ad;->h:I

    :goto_9
    sub-int/2addr v0, v2

    if-eq v0, v8, :cond_b

    if-nez v0, :cond_e

    if-nez p2, :cond_e

    :cond_b
    invoke-direct {p0, p1}, Lcom/a/a/b/at;->b(Lcom/a/a/b/at$ad;)V

    :goto_a
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_c
    move v2, v1

    goto :goto_8

    :cond_d
    move v0, v1

    goto :goto_9

    :cond_e
    sget-boolean v2, Lcom/a/a/b/at;->f:Z

    if-nez v2, :cond_f

    if-eq v0, v7, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    invoke-direct {p0, v3}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;)V

    invoke-direct {p0, p1}, Lcom/a/a/b/at;->b(Lcom/a/a/b/at$ad;)V

    goto :goto_a

    :cond_10
    if-nez v5, :cond_11

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/a/a/b/at$ad;->h:I

    if-eqz p2, :cond_3

    goto/16 :goto_1

    :cond_11
    sget-boolean v3, Lcom/a/a/b/at;->f:Z

    if-nez v3, :cond_12

    if-eq v5, v7, :cond_12

    if-eq v5, v8, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/a/a/b/at$ad;->h:I

    if-eqz p2, :cond_0

    goto :goto_7
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lcom/a/a/b/at$ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/a/a/b/at;->b(Ljava/lang/Object;)Lcom/a/a/b/at$ad;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Z)V

    :cond_0
    return-object v0
.end method

.method final a(Ljava/util/Map$Entry;)Lcom/a/a/b/at$ad;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/b/at;->b(Ljava/lang/Object;)Lcom/a/a/b/at$ad;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/a/a/b/at$ad;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    return-object v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final a(Lcom/a/a/b/at$ad;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/at$ad",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/a/a/b/at$ad;->e:Lcom/a/a/b/at$ad;

    iget-object v1, p1, Lcom/a/a/b/at$ad;->d:Lcom/a/a/b/at$ad;

    iput-object v1, v0, Lcom/a/a/b/at$ad;->d:Lcom/a/a/b/at$ad;

    iget-object v0, p1, Lcom/a/a/b/at$ad;->d:Lcom/a/a/b/at$ad;

    iget-object v1, p1, Lcom/a/a/b/at$ad;->e:Lcom/a/a/b/at$ad;

    iput-object v1, v0, Lcom/a/a/b/at$ad;->e:Lcom/a/a/b/at$ad;

    :cond_0
    iget-object v0, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iget-object v1, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    iget-object v3, p1, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget v3, v0, Lcom/a/a/b/at$ad;->h:I

    iget v4, v1, Lcom/a/a/b/at$ad;->h:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/a/a/b/at$ad;->b()Lcom/a/a/b/at$ad;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Z)V

    iget-object v3, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    if-eqz v3, :cond_6

    iget v1, v3, Lcom/a/a/b/at$ad;->h:I

    iput-object v3, v0, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    iput-object v0, v3, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    iput-object v5, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    :goto_1
    iget-object v3, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    if-eqz v3, :cond_1

    iget v2, v3, Lcom/a/a/b/at$ad;->h:I

    iput-object v3, v0, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    iput-object v0, v3, Lcom/a/a/b/at$ad;->a:Lcom/a/a/b/at$ad;

    iput-object v5, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/a/a/b/at$ad;->h:I

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/b/at$ad;->a()Lcom/a/a/b/at$ad;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    iput-object v5, p1, Lcom/a/a/b/at$ad;->b:Lcom/a/a/b/at$ad;

    :goto_3
    invoke-direct {p0, v3, v2}, Lcom/a/a/b/at;->b(Lcom/a/a/b/at$ad;Z)V

    iget v0, p0, Lcom/a/a/b/at;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/at;->c:I

    iget v0, p0, Lcom/a/a/b/at;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/at;->d:I

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    iput-object v5, p1, Lcom/a/a/b/at$ad;->c:Lcom/a/a/b/at$ad;

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/a/a/b/at;->a(Lcom/a/a/b/at$ad;Lcom/a/a/b/at$ad;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/at;->b:Lcom/a/a/b/at$ad;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/at;->c:I

    iget v0, p0, Lcom/a/a/b/at;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/at;->d:I

    iget-object v0, p0, Lcom/a/a/b/at;->e:Lcom/a/a/b/at$ad;

    iput-object v0, v0, Lcom/a/a/b/at$ad;->e:Lcom/a/a/b/at$ad;

    iput-object v0, v0, Lcom/a/a/b/at$ad;->d:Lcom/a/a/b/at$ad;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/a/a/b/at;->b(Ljava/lang/Object;)Lcom/a/a/b/at$ad;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/at;->h:Lcom/a/a/b/at$aa;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/at$aa;

    invoke-direct {v0, p0}, Lcom/a/a/b/at$aa;-><init>(Lcom/a/a/b/at;)V

    iput-object v0, p0, Lcom/a/a/b/at;->h:Lcom/a/a/b/at$aa;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/a/a/b/at;->b(Ljava/lang/Object;)Lcom/a/a/b/at$ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/a/a/b/at$ad;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/at;->i:Lcom/a/a/b/at$ab;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/a/b/at$ab;

    invoke-direct {v0, p0}, Lcom/a/a/b/at$ab;-><init>(Lcom/a/a/b/at;)V

    iput-object v0, p0, Lcom/a/a/b/at;->i:Lcom/a/a/b/at$ab;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/at;->a(Ljava/lang/Object;Z)Lcom/a/a/b/at$ad;

    move-result-object v0

    iget-object v1, v0, Lcom/a/a/b/at$ad;->g:Ljava/lang/Object;

    iput-object p2, v0, Lcom/a/a/b/at$ad;->g:Ljava/lang/Object;

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/b/at;->a(Ljava/lang/Object;)Lcom/a/a/b/at$ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/a/a/b/at$ad;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/a/a/b/at;->c:I

    return v0
.end method
