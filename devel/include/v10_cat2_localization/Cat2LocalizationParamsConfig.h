//#line 2 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the v10_cat2_localization package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __v10_cat2_localization__CAT2LOCALIZATIONPARAMSCONFIG_H__
#define __v10_cat2_localization__CAT2LOCALIZATIONPARAMSCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace v10_cat2_localization
{
  class Cat2LocalizationParamsConfigStatics;

  class Cat2LocalizationParamsConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(Cat2LocalizationParamsConfig &config, const Cat2LocalizationParamsConfig &max, const Cat2LocalizationParamsConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const Cat2LocalizationParamsConfig &config1, const Cat2LocalizationParamsConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, Cat2LocalizationParamsConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const Cat2LocalizationParamsConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, Cat2LocalizationParamsConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const Cat2LocalizationParamsConfig &config) const = 0;
      virtual void getValue(const Cat2LocalizationParamsConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T Cat2LocalizationParamsConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (Cat2LocalizationParamsConfig::* field);

      virtual void clamp(Cat2LocalizationParamsConfig &config, const Cat2LocalizationParamsConfig &max, const Cat2LocalizationParamsConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const Cat2LocalizationParamsConfig &config1, const Cat2LocalizationParamsConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, Cat2LocalizationParamsConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const Cat2LocalizationParamsConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, Cat2LocalizationParamsConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const Cat2LocalizationParamsConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const Cat2LocalizationParamsConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, Cat2LocalizationParamsConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, Cat2LocalizationParamsConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<Cat2LocalizationParamsConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(Cat2LocalizationParamsConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("num_particles"==(*_i)->name){num_particles = boost::any_cast<int>(val);}
        if("range_var"==(*_i)->name){range_var = boost::any_cast<double>(val);}
        if("beam_var"==(*_i)->name){beam_var = boost::any_cast<double>(val);}
        if("gy_var"==(*_i)->name){gy_var = boost::any_cast<double>(val);}
        if("alpha1"==(*_i)->name){alpha1 = boost::any_cast<double>(val);}
        if("alpha2"==(*_i)->name){alpha2 = boost::any_cast<double>(val);}
        if("alpha3"==(*_i)->name){alpha3 = boost::any_cast<double>(val);}
        if("alpha4"==(*_i)->name){alpha4 = boost::any_cast<double>(val);}
        if("short_term_rate"==(*_i)->name){short_term_rate = boost::any_cast<double>(val);}
        if("long_term_rate"==(*_i)->name){long_term_rate = boost::any_cast<double>(val);}
      }
    }

    int num_particles;
double range_var;
double beam_var;
double gy_var;
double alpha1;
double alpha2;
double alpha3;
double alpha4;
double short_term_rate;
double long_term_rate;

    bool state;
    std::string name;

    
}groups;



//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int num_particles;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double range_var;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double beam_var;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double gy_var;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double alpha1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double alpha2;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double alpha3;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double alpha4;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double short_term_rate;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double long_term_rate;
//#line 228 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("Cat2LocalizationParamsConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const Cat2LocalizationParamsConfig &__max__ = __getMax__();
      const Cat2LocalizationParamsConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const Cat2LocalizationParamsConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const Cat2LocalizationParamsConfig &__getDefault__();
    static const Cat2LocalizationParamsConfig &__getMax__();
    static const Cat2LocalizationParamsConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const Cat2LocalizationParamsConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void Cat2LocalizationParamsConfig::ParamDescription<std::string>::clamp(Cat2LocalizationParamsConfig &config, const Cat2LocalizationParamsConfig &max, const Cat2LocalizationParamsConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class Cat2LocalizationParamsConfigStatics
  {
    friend class Cat2LocalizationParamsConfig;

    Cat2LocalizationParamsConfigStatics()
    {
Cat2LocalizationParamsConfig::GroupDescription<Cat2LocalizationParamsConfig::DEFAULT, Cat2LocalizationParamsConfig> Default("Default", "", 0, 0, true, &Cat2LocalizationParamsConfig::groups);
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.num_particles = 50;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.num_particles = 1000;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.num_particles = 100;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<int>("num_particles", "int", 0, "Number of particles", "", &Cat2LocalizationParamsConfig::num_particles)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<int>("num_particles", "int", 0, "Number of particles", "", &Cat2LocalizationParamsConfig::num_particles)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.range_var = 0.1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.range_var = 99999.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.range_var = 40000.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("range_var", "double", 0, "Range Variance", "", &Cat2LocalizationParamsConfig::range_var)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("range_var", "double", 0, "Range Variance", "", &Cat2LocalizationParamsConfig::range_var)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.beam_var = 0.1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.beam_var = 99999.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.beam_var = 7225.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("beam_var", "double", 0, "Beam Variance", "", &Cat2LocalizationParamsConfig::beam_var)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("beam_var", "double", 0, "Beam Variance", "", &Cat2LocalizationParamsConfig::beam_var)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.gy_var = 0.1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.gy_var = 99999.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.gy_var = 1225.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("gy_var", "double", 0, "Gyro Direction Variance", "", &Cat2LocalizationParamsConfig::gy_var)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("gy_var", "double", 0, "Gyro Direction Variance", "", &Cat2LocalizationParamsConfig::gy_var)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.alpha1 = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.alpha1 = 100.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.alpha1 = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha1", "double", 0, "Alpha1 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha1)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha1", "double", 0, "Alpha1 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha1)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.alpha2 = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.alpha2 = 100.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.alpha2 = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha2", "double", 0, "Alpha2 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha2)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha2", "double", 0, "Alpha2 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha2)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.alpha3 = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.alpha3 = 100.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.alpha3 = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha3", "double", 0, "Alpha3 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha3)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha3", "double", 0, "Alpha3 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha3)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.alpha4 = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.alpha4 = 100.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.alpha4 = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha4", "double", 0, "Alpha4 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha4)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("alpha4", "double", 0, "Alpha4 Gain for Motion Model", "", &Cat2LocalizationParamsConfig::alpha4)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.short_term_rate = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.short_term_rate = 100.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.short_term_rate = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("short_term_rate", "double", 0, "Short Term Rate", "", &Cat2LocalizationParamsConfig::short_term_rate)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("short_term_rate", "double", 0, "Short Term Rate", "", &Cat2LocalizationParamsConfig::short_term_rate)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.long_term_rate = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.long_term_rate = 100.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.long_term_rate = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("long_term_rate", "double", 0, "Long Term Rate", "", &Cat2LocalizationParamsConfig::long_term_rate)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr(new Cat2LocalizationParamsConfig::ParamDescription<double>("long_term_rate", "double", 0, "Long Term Rate", "", &Cat2LocalizationParamsConfig::long_term_rate)));
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(Cat2LocalizationParamsConfig::AbstractGroupDescriptionConstPtr(new Cat2LocalizationParamsConfig::GroupDescription<Cat2LocalizationParamsConfig::DEFAULT, Cat2LocalizationParamsConfig>(Default)));
//#line 366 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<Cat2LocalizationParamsConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<Cat2LocalizationParamsConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    Cat2LocalizationParamsConfig __max__;
    Cat2LocalizationParamsConfig __min__;
    Cat2LocalizationParamsConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const Cat2LocalizationParamsConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static Cat2LocalizationParamsConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &Cat2LocalizationParamsConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const Cat2LocalizationParamsConfig &Cat2LocalizationParamsConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const Cat2LocalizationParamsConfig &Cat2LocalizationParamsConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const Cat2LocalizationParamsConfig &Cat2LocalizationParamsConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<Cat2LocalizationParamsConfig::AbstractParamDescriptionConstPtr> &Cat2LocalizationParamsConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<Cat2LocalizationParamsConfig::AbstractGroupDescriptionConstPtr> &Cat2LocalizationParamsConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const Cat2LocalizationParamsConfigStatics *Cat2LocalizationParamsConfig::__get_statics__()
  {
    const static Cat2LocalizationParamsConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = Cat2LocalizationParamsConfigStatics::get_instance();

    return statics;
  }


}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __CAT2LOCALIZATIONPARAMSRECONFIGURATOR_H__
