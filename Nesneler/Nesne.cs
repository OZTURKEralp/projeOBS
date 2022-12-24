using System;
using System.Linq;

namespace Nesneler
{
    public interface IOrgenci
    {
        OgrenciNesne GetId(long id);
    }

    public class Ogenci : IOrgenci
    {
        public OgrenciNesne GetId(long id)
        {
            return new OgrenciNesne { Id = 1, Name = "Sabri" };
        }
    }

    public class OgrenciNesne : MirasId
    {
        public string Name { get; set; }
    }

    public class MirasId
    {
        public long Id { get; set; }
    }

}