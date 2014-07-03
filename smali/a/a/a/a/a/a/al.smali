.class public final La/a/a/a/a/a/al;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/al;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La/a/a/a/a/a/al;->a:Ljava/lang/String;

    iput-object v1, p0, La/a/a/a/a/a/al;->b:[B

    iput v0, p0, La/a/a/a/a/a/al;->c:I

    iput v0, p0, La/a/a/a/a/a/al;->d:I

    iput-object v1, p0, La/a/a/a/a/a/al;->e:[B

    iput v0, p0, La/a/a/a/a/a/al;->f:I

    iput v0, p0, La/a/a/a/a/a/al;->g:I

    iput-object p1, p0, La/a/a/a/a/a/al;->a:Ljava/lang/String;

    iput-object p2, p0, La/a/a/a/a/a/al;->b:[B

    iput v0, p0, La/a/a/a/a/a/al;->c:I

    iput p3, p0, La/a/a/a/a/a/al;->d:I

    iput-object v1, p0, La/a/a/a/a/a/al;->e:[B

    iput v0, p0, La/a/a/a/a/a/al;->f:I

    iput v0, p0, La/a/a/a/a/a/al;->g:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/al;->b:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a/al;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a/al;->c:I

    return v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/al;->e:[B

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, La/a/a/a/a/a/al;->f:I

    return v0
.end method

.method public final j_()I
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/al;->e:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, La/a/a/a/a/a/al;->g:I

    goto :goto_0
.end method
